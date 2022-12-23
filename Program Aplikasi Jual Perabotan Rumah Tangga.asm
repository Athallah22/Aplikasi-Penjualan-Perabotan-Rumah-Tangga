.MODEL SMALL
.CODE
org 100h
start:
	jmp mulai
nama	db 13, 10, 'NAMA ANDA	: $'
nim		db 13, 10, 'NIM ANDA	 : $'
lanjut	db 13, 10, 'LANJUT Tekan y untuk melanjutkan >>> $'
tampung_nama	db 30,?,30 dup (?)
tampung_nim		db 13,?,13 dup (?)
tampung_lanjut  db 13,?,13 dup (?)

a db 01
b db 02
c db 03
d db 04
e db 05
f db 06
j dw 15

daftar  db 13,10,'||==================================================||'
	    db 13,10,'||	 	DAFTAR NAMA & HARGA PERABOTAN            ||'
	    db 13,10,'||==================================================||'
 	    db 13,10,'||No||		JENIS	   ||		HARGA		   ||'
	    db 13,10,'||==||===================||=========================||'
        db 13,10,'||01||	    MEJA       ||       Rp. 100.000       ||'
 	    db 13,10,'||==||===================||=========================||'  
	    db 13,10,'||02||	    KURSI      ||       Rp. 50.000        ||'
	    db 13,10,'||==||===================||=========================||'
	    db 13,10,'||03||	   KOMPOR      ||       Rp. 200.000       ||'
	    db 13,10,'||==||===================||=========================||'
	    db 13,10,'||04||	   KASUR       ||       Rp. 250.000       ||'
	    db 13,10,'||==||===================||=========================||'
	    db 13,10,'||05||	 ALAT MASAK    ||       Rp. 150.000       ||'
	    db 13,10,'||==||===================||=========================||'
	    db 13,10,'||06||	  TELEVISI     ||       Rp. 6.660.000     ||'
	    db 13,10,'||==||===================||=========================||'
	    db 13,10,'||07||  BANTAL & GULING  ||       Rp. 50.000        ||'
	    db 13,10,'||==||===================||=========================||'
	    db 13,10,'||08||	MESIN CUCI     ||       Rp. 5.520.000     ||'
	    db 13,10,'||==||===================||=========================||'
	    db 13,10,'||09||     ALAT MAKAN    ||       Rp. 90.000        ||'
	    db 13,10,'||==||===================||=========================||'
	    db 13,10,'||10||	   LEMARI      ||       Rp. 500.000       ||'
	    db 13,10,'||==||===================||=========================||','$'

eror		db 13,10,'KODE YANG ANDA MASUKAN SALAH $'
pilih_nmr   db 13,10,'Silahkan masukan nomor yang Anda mau : $'
success	    db 13,10,'Selamat Anda Berhasil $'


	mulai:
	mov ah,09h
	lea dx,nama
	int 21h
	mov ah,0ah
	lea dx,tampung_nama
	int 21h
	push dx

	mov ah,09h
	lea dx,nim
	int 21h
	mov ah,0ah
	lea dx,tampung_nim
	int 21h
	push dx

	mov ah,09h
	mov dx,offset daftar
	int 21h
	mov ah,09h
	mov dx,offset lanjut
	int 21h  
	mov ah,01h
	int 21h
	cmp al,'y'
	jmp proses
	jne eror_msg


eror_msg:
	mov ah,09h
	mov dx,offset eror
	int 21h
	int 20h


proses:
	mov ah,09h
	mov dx,offset pilih_nmr
	int 21h


	mov ah,1
	int 21h
	mov bh,al
	mov ah,1
	int 21h
	mov bl,al
	cmp bh,'0'
	cmp bl,'1'
	je hasil1

	cmp bh,'0'
	cmp bl,'2'
	je hasil2
	
	cmp bh,'0'
	cmp bl,'3'
	je hasil3

	cmp bh,'0'
	cmp bl,'4'
	je hasil4

	cmp bh,'0'
	cmp bl,'5'
	je hasil5

	cmp bh,'0'
	cmp bl,'6'
	je hasil6

	cmp bh,'0'
	cmp bl,'7'
	je hasil7

	cmp bh,'0'
	cmp bl,'8'
	je hasil8

	cmp bh,'0'
	cmp bl,'9'
	je hasil9

	cmp bh,'1'
	cmp bl,'0'
	je hasil10

	
jne eror_msg

hasil1:
	mov ah,09h
	lea dx,teks1
	int 21h
	int 20h

hasil2:
	mov ah,09h
	lea dx,teks2
	int 21h
	int 20h

hasil3:
	mov ah,09h
	lea dx,teks3
	int 21h
	int 20h

hasil4:
	mov ah,09h
	lea dx,teks4
	int 21h
	int 20h

hasil5:
	mov ah,09h
	lea dx,teks5
	int 21h
	int 20h

hasil6:
	mov ah,09h
	lea dx,teks6
	int 21h
	int 20h

hasil7:
	mov ah,09h
	lea dx,teks7
	int 21h
	int 20h

hasil8:
	mov ah,09h
	lea dx,teks8
	int 21h
	int 20h

hasil9:
	mov ah,09h
	lea dx,teks9
	int 21h
	int 20h

hasil10:
	mov ah,09h
	lea dx,teks10
	int 21h
	int 20h


teks1		db 13,10,'Anda memilih MEJA'
		db 13,10,'Total harga yang harus Anda bayar adalah: Rp. 100.000'
		db 13,10,'Terima Kasih $'

teks2		db 13,10,'Anda memilih KURSI'
		db 13,10,'Total harga yang harus Anda bayar adalah: Rp. 50.000'
		db 13,10,'Terima Kasih $'

teks3		db 13,10,'Anda memilih KOMPOR'
		db 13,10,'Total harga yang harus Anda bayar adalah: Rp. 200.000'
		db 13,10,'Terima Kasih $'

teks4		db 13,10,'Anda memilih KASUR'
		db 13,10,'Total harga yang harus Anda bayar adalah: Rp. 250.000'
		db 13,10,'Terima Kasih $'

teks5		db 13,10,'Anda memilih ALAT MASAK'
		db 13,10,'Total harga yang harus Anda bayar adalah: Rp. 150.000'
		db 13,10,'Terima Kasih $'

teks6		db 13,10,'Anda memilih TELEVISI'
		db 13,10,'Total harga yang harus Anda bayar adalah: Rp. 6.660.000'
		db 13,10,'Terima Kasih $'

teks7		db 13,10,'Anda memilih BANTAL & GULING'
		db 13,10,'Total harga yang harus Anda bayar adalah: Rp. 50.000'
		db 13,10,'Terima Kasih $'

teks8		db 13,10,'Anda memilih MESIN CUCI'
		db 13,10,'Total harga yang harus Anda bayar adalah: Rp. 5.520.000'
		db 13,10,'Terima Kasih $'

teks9		db 13,10,'Anda memilih ALAT MAKAN'
		db 13,10,'Total harga yang harus Anda bayar adalah: Rp. 90.000'
		db 13,10,'Terima Kasih $'

teks10	db 13,10,'Anda memilih LEMARI'
		db 13,10,'Total harga yang harus Anda bayar adalah: Rp. 500.000'
		db 13,10,'Terima Kasih $'


end start


	












