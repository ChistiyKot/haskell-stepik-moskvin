import Data.Time.Clock
import Data.Time.Format
import System.Locale

timeToString :: UTCTime -> String
timeToString = formatTime defaultTimeLocale "%a %d %T"

data LogLevel = Error | Warning | Info
instance Show LogLevel where
    show Error = "Error"
    show Warning = "Warning"
    show Info = "Info"

data LogEntry = LogEntry { timestamp :: UTCTime, logLevel :: LogLevel, message :: String } deriving (Show)

logLevelToString :: LogLevel -> String
logLevelToString Error = "Error"
logLevelToString Warning = "Warning"
logLevelToString Info = "Info"

logEntryToString :: LogEntry -> String
logEntryToString (LogEntry t l s) = (timeToString t) ++ ": " ++ (show l) ++ ": " ++ s
