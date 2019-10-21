{-# LANGUAGE DeriveGeneric #-}
module Main where

import Lib
import GHC.Generics
import Data.Text as Text
-- import Data.Text
import Data.Aeson (ToJSON(..), FromJSON(..), (.:), (.=), object, Object(..), decode, encode, genericToEncoding, defaultOptions)


main :: IO ()
main = someFunc

data Content = Content {
      title :: String,
     content :: String
    , age  :: Int
    } deriving (Generic, Show)

instance ToJSON Content where
    -- No need to provide a toJSON implementation the compiler will generate sensible default implementations.

    -- For efficiency, we write a simple toEncoding implementation, as
    -- the default version uses toJSON.
    toEncoding = genericToEncoding defaultOptions

instance FromJSON Content
    -- No need to provide a parseJSON implementation the compiler will generate sensible default implementations.

-- encode (Content {title = "Super", content = "Amazing", age = 102})