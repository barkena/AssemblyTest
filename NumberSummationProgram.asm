section.data
     result db 0

section.text
     global_start

_start:
     ; Initializing Variables
     mov eax, 1 ; Seed number
     mov ecx, 10 ; Final number
     mov byte [result], 0 ; Reset result

     ; Number summing loop
     sum_loop:
         add byte [result], al ; Adding the current number to the result
         inc eax ; Increase current number
         loop sum_loop ; Repeat the loop until ecx equals 0

     ; Outputting the result to the console
     mov eax, 4 ; sys_write system call
     mov ebx, 1 ; File handle (stdout)
     mov ecx, result ; Pointer to result
     mov edx, 1 ; String length
     int 0x80 ; Calling the kernel

     ; Exit the program
     mov eax, 1 ; System call sys_exit
     xor ebx, ebx ; Return code 0
     int 0x80 ; Calling the kernel
