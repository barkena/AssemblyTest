section.data
     hello db 'Hello, Assembly!',0

section.text
     global_start

_start:
     ; Outputting a line to the console
     mov eax, 4 ; sys_write system call
     mov ebx, 1 ; File handle (stdout)
     mov ecx, hello ; Pointer to string
     mov edx, 15; String length
     int 0x80 ; Calling the kernel

     ; Exit the program
     mov eax, 1 ; System call sys_exit
     xor ebx, ebx ; Return code 0
     int 0x80 ; Calling the kernel
