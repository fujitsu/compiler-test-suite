#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned short, signed int);
extern unsigned int (*v2) (unsigned short, unsigned short, signed int);
extern signed char v3 (signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned int);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern unsigned short v7 (signed char, signed short, signed char, unsigned int);
extern unsigned short (*v8) (signed char, signed short, signed char, unsigned int);
extern unsigned char v9 (signed short, unsigned short, signed char, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short, signed char, unsigned short);
extern signed int v11 (unsigned short, signed short);
extern signed int (*v12) (unsigned short, signed short);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern void v15 (signed int, unsigned int, signed short, unsigned short);
extern void (*v16) (signed int, unsigned int, signed short, unsigned short);
unsigned int v19 (unsigned char, signed short, signed short, signed char);
unsigned int (*v20) (unsigned char, signed short, signed short, signed char) = v19;
unsigned int v21 (signed char, unsigned short);
unsigned int (*v22) (signed char, unsigned short) = v21;
signed char v23 (unsigned char, signed char, signed int, unsigned char);
signed char (*v24) (unsigned char, signed char, signed int, unsigned char) = v23;
extern unsigned char v25 (signed char);
extern unsigned char (*v26) (signed char);
extern unsigned int v27 (signed int, signed short, signed short);
extern unsigned int (*v28) (signed int, signed short, signed short);
extern signed short v29 (unsigned char);
extern signed short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned char v32 = 5;
signed char v31 = -2;

signed char v23 (unsigned char v34, signed char v35, signed int v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 2;
signed short v39 = 3;
signed short v38 = -2;
trace++;
switch (trace)
{
case 2: 
{
signed char v41;
v41 = v13 ();
history[history_index++] = (int)v41;
}
break;
case 8: 
{
signed char v42;
v42 = v13 ();
history[history_index++] = (int)v42;
}
break;
case 14: 
return v40;
case 18: 
return 2;
default: abort ();
}
}
}
}

unsigned int v21 (signed char v43, unsigned short v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = -1;
signed char v46 = -1;
signed short v45 = 1;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v48;
signed char v49;
signed int v50;
unsigned char v51;
signed char v52;
v48 = 3 - 1;
v49 = v47 + v46;
v50 = 2 - 0;
v51 = 2 + 4;
v52 = v23 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 15: 
return 1U;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned char v53, signed short v54, signed short v55, signed char v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 7U;
unsigned short v58 = 1;
signed short v57 = -2;
trace++;
switch (trace)
{
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
unsigned short v62;
unsigned short v63;
signed int v64;
unsigned int v65;
v62 = 2 + 5;
v63 = 3 - 6;
v64 = 3 - 2;
v65 = v1 (v62, v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
