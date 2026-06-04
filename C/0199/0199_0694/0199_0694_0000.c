#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern unsigned short v3 (unsigned int, unsigned int, signed short, signed int);
extern unsigned short (*v4) (unsigned int, unsigned int, signed short, signed int);
signed int v7 (signed short, signed short);
signed int (*v8) (signed short, signed short) = v7;
extern void v9 (unsigned char, unsigned short);
extern void (*v10) (unsigned char, unsigned short);
extern unsigned char v11 (signed int, unsigned char, signed short, unsigned char);
extern unsigned char (*v12) (signed int, unsigned char, signed short, unsigned char);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern unsigned short v15 (signed short, signed int);
extern unsigned short (*v16) (signed short, signed int);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
signed char v21 (signed char);
signed char (*v22) (signed char) = v21;
extern unsigned char v23 (unsigned short, unsigned int, unsigned char, signed short);
extern unsigned char (*v24) (unsigned short, unsigned int, unsigned char, signed short);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern void v27 (unsigned char, signed char, unsigned int, signed int);
extern void (*v28) (unsigned char, signed char, unsigned int, signed int);
extern unsigned short v29 (signed int, unsigned int, signed short);
extern unsigned short (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed char v32 = -4;
unsigned int v31 = 7U;

signed char v21 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -4;
signed short v36 = 0;
unsigned char v35 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed short v38, signed short v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = -2;
unsigned int v41 = 1U;
signed int v40 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed int v43;
unsigned char v44;
signed short v45;
unsigned char v46;
unsigned char v47;
v43 = 1 + v42;
v44 = 0 + 4;
v45 = -1 - v38;
v46 = 1 - 5;
v47 = v11 (v43, v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 6: 
{
unsigned short v48;
signed short v49;
v48 = 3 + 5;
v49 = v19 (v48);
history[history_index++] = (int)v49;
}
break;
case 8: 
{
signed int v50;
unsigned char v51;
signed short v52;
unsigned char v53;
unsigned char v54;
v50 = v40 - -3;
v51 = 2 + 5;
v52 = v39 - -4;
v53 = 5 + 6;
v54 = v11 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 12: 
return v40;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v57;
unsigned char v58;
v57 = 2 - -2;
v58 = v1 (v57);
history[history_index++] = (int)v58;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
