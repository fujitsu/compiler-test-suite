#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v2) (unsigned short, unsigned int, unsigned char);
extern unsigned char v3 (signed short, unsigned char, signed char);
extern unsigned char (*v4) (signed short, unsigned char, signed char);
unsigned short v5 (signed short);
unsigned short (*v6) (signed short) = v5;
signed int v7 (unsigned short, unsigned char, unsigned char);
signed int (*v8) (unsigned short, unsigned char, unsigned char) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (signed int, signed int, unsigned char, signed short);
extern unsigned char (*v12) (signed int, signed int, unsigned char, signed short);
void v13 (unsigned int, signed short, signed short, signed char);
void (*v14) (unsigned int, signed short, signed short, signed char) = v13;
extern signed char v15 (signed short, signed short);
extern signed char (*v16) (signed short, signed short);
extern signed char v17 (unsigned short, signed int, unsigned int);
extern signed char (*v18) (unsigned short, signed int, unsigned int);
extern signed char v19 (unsigned char, unsigned int, signed int, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int, signed int, unsigned int);
extern signed int v21 (signed char, unsigned int, signed int);
extern signed int (*v22) (signed char, unsigned int, signed int);
extern signed short v23 (unsigned short, signed char, signed short);
extern signed short (*v24) (unsigned short, signed char, signed short);
extern unsigned char v25 (unsigned char, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
void v29 (unsigned short);
void (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
unsigned short v32 = 6;
unsigned int v31 = 3U;

void v29 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 0;
unsigned short v36 = 2;
signed int v35 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned int v38, signed short v39, signed short v40, signed char v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 7;
signed int v43 = 0;
unsigned char v42 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v45, unsigned char v46, unsigned char v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 3;
signed char v49 = 0;
unsigned int v48 = 7U;
trace++;
switch (trace)
{
case 9: 
{
signed int v51;
signed int v52;
unsigned char v53;
signed short v54;
unsigned char v55;
v51 = 1 - 0;
v52 = 3 - 3;
v53 = v47 - 7;
v54 = v50 + v50;
v55 = v11 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned short v5 (signed short v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 6;
unsigned short v58 = 3;
signed int v57 = 0;
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
unsigned int v63;
unsigned char v64;
unsigned char v65;
v62 = v32 - 5;
v63 = 1U - v31;
v64 = 6 + v33;
v65 = v1 (v62, v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
