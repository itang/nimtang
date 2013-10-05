import times, strutils
from os import nil

template time(doWork: expr): expr =
  let start = times.epochTime()
  doWork
  let elapsed = (epochTime() - start) * 1000
  echo "Elapsed time: ", elapsed.formatFloat(ffDecimal, 2), " msecs"
  elapsed

when isMainModule:
  discard time(os.sleep(10)) #1000 * 3