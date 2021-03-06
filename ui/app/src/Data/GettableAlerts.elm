{-
   Alertmanager API
   API of the Prometheus Alertmanager (https://github.com/prometheus/alertmanager)

   OpenAPI spec version: 0.0.1

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.GettableAlerts exposing (GettableAlerts, decoder, encoder)

import Data.GettableAlert as GettableAlert exposing (GettableAlert)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias GettableAlerts =
    List GettableAlert


decoder : Decoder GettableAlerts
decoder =
    Decode.list GettableAlert.decoder


encoder : GettableAlerts -> Encode.Value
encoder items =
    Encode.list GettableAlert.encoder items
