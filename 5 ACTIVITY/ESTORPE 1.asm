.model small

.data
buffersize equ 30
buffer db buffersize, 0 ; Buffer for input
str1 db "Enter Full Name: $"
str2 db 13,10, "Enter C/Y/S: $"   
str3 db 13,10, "Enter Age: $"
str4 db 13,10, "Enter Gender: $"
str5 db 13,10, "Enter Birthday: $"  
str6 db 13,10, "Enter Contact No: $"
str7 db 13,10, "Enter Email: $"

.code
main proc
    mov ax, @data
    mov ds, ax

    lea dx, str1
    mov ah, 9
    int 21h

    lea dx, buffer
    mov ah, 0Ah
    int 21h

    lea dx, str2
    mov ah, 9
    int 21h

    lea dx, buffer
    mov ah, 0Ah
    int 21h

    lea dx, str3
    mov ah, 9
    int 21h

    lea dx, buffer
    mov ah, 0Ah
    int 21h

    lea dx, str4
    mov ah, 9
    int 21h

    lea dx, buffer
    mov ah, 0Ah
    int 21h

    lea dx, str5
    mov ah, 9
    int 21h

    lea dx, buffer
    mov ah, 0Ah
    int 21h

    lea dx, str6
    mov ah, 9
    int 21h

    lea dx, buffer
    mov ah, 0Ah
    int 21h

    lea dx, str7
    mov ah, 9
    int 21h

    lea dx, buffer
    mov ah, 0Ah
    int 21h

main endp

end