rm */*.cm* *.cm* on_b.exe on_off.exe
ocamlc -c -I on on/a.mli on/a.ml -o on/a.cmo
ocamlc -c -I off off/a.mli off/a.ml -o off/a.cmo
ls -R
ocamlc -I on -I off on/a.cmo  b.ml -o on_b.exe
# I belive It can fix
# rm *.cm*
ocamlc -I on -I off off/a.cmo b.ml -o off_b.exe
