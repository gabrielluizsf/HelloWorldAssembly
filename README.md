# Assembly

## Compilar

### Transforma o arquivo helloWorld.asm em linguaguem de máquina gerando um arquivo com a extensão .o

```asm
nasm -f elf64 helloWorld.asm
```

## Linkeditar

### Transforma o arquivo helloWorld.o em um executável

```asm
ld -s -o helloASM helloWorld.o
```