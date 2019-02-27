# question_on_stackoverflow

Hello,

I have uploaded the very small exemple project on a [github repository][1]

I have a school project. The specifications says that we can enable or disable a component.

I came from the c world in wich we can compile c to object and chose the object to link. I try this in OCaml.

I have two source file with the same function but their effect are different.
I have two folder on called "on" with implementation and "off" folder with empty body

For the test I have a simple a.ml and a.mli file that only print hello world and b.mli b.ml that call the module a. (so I have on/a.ml and off/a.ml)

I compile the on version and the off with this command:
```
ocamlc -c -I on on/a.mli on/a.ml -o on/a.cmo
```
then i try to link the C-way
```
ocamlc on/a.cmo  b.ml -o on_b.exe
```
but I get the error
```
File "b.ml", line 1, characters 9-15:
Error: Unbound module A
```

I have then read I should specify the folder to search in with -I.
```
ocamlc -I on -I off on/a.cmo  b.ml -o on_b.exe
```

I was happy because that work for the on version

but it will not work for the off version
```
ocamlc -I on -I off off/a.cmo b.ml -o off_b.exe
```
I get the error
```
Error: Files b.cmo and off/a.cmo
       make inconsistent assumptions over interface A
```

I have inspect with ocamlobjinfo it seem for build B it search for the first module called A

In this exemple I have only A and B but in future I will to build with some version on and some off... but don't do it manually

A solution found but no really efficient is to clean all .cmo and .cmi files ...


  [1]: https://github.com/Et7f3/question_on_stackoverflow
