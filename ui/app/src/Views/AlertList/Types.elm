module Views.AlertList.Types exposing (AlertListMsg(..), Model, Tab(..), initAlertList)

import Browser.Navigation exposing (Key)
import Data.GettableAlerts exposing (GettableAlerts)
import Utils.Types exposing (ApiData(..))
import Views.FilterBar.Types as FilterBar
import Views.GroupBar.Types as GroupBar
import Views.ReceiverBar.Types as ReceiverBar


type AlertListMsg
    = AlertsFetched (ApiData GettableAlerts)
    | FetchAlerts
    | MsgForReceiverBar ReceiverBar.Msg
    | MsgForFilterBar FilterBar.Msg
    | MsgForGroupBar GroupBar.Msg
    | ToggleSilenced Bool
    | ToggleInhibited Bool
    | SetActive (Maybe String)
    | SetTab Tab


type Tab
    = FilterTab
    | GroupTab


type alias Model =
    { alerts : ApiData GettableAlerts
    , receiverBar : ReceiverBar.Model
    , groupBar : GroupBar.Model
    , filterBar : FilterBar.Model
    , tab : Tab
    , activeId : Maybe String
    , key : Key
    }


initAlertList : Key -> Model
initAlertList key =
    { alerts = Initial
    , receiverBar = ReceiverBar.initReceiverBar key
    , groupBar = GroupBar.initGroupBar key
    , filterBar = FilterBar.initFilterBar key
    , tab = FilterTab
    , activeId = Nothing
    , key = key
    }
