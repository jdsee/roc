#!/usr/bin/env roc

app "arena-alloc"
    packages { pf: "platform" }
    imports [ pf.Task.{ Task, await }, pf.Terminal ]
    provides [ main ] to pf

# This runs in a loop
main : Task {} *
main =
    Task.useArenaAlloc (
        {} <- await (Terminal.write "Input: ")
        input <- await Terminal.readLine

        result = getResult input

        Terminal.write "Bytes: \(result)"
    )

getResult : Str -> Str
getResult = \str ->
    str
        |> Str.toUtf8
        |> List.walk "" addByte

addByte : Str, U8 -> Str
addByte = \str, byte ->
    newStr = Num.toStr byte

    "\(str),\(newStr)"
