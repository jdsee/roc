app [main] { pf: platform "platform/main.roc" }

import Issue2279Help
import pf.Task

main =
    text =
        if Bool.true then
            Issue2279Help.text
        else
            Issue2279Help.asText 42

    Task.putLine text
