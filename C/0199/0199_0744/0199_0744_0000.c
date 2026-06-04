#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, signed char);
extern signed int (*v2) (unsigned char, signed char);
extern signed int v3 (unsigned char, unsigned char);
extern signed int (*v4) (unsigned char, unsigned char);
extern signed int v5 (signed int, unsigned char);
extern signed int (*v6) (signed int, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern signed char v11 (signed int, signed short, signed short);
extern signed char (*v12) (signed int, signed short, signed short);
signed int v13 (unsigned int);
signed int (*v14) (unsigned int) = v13;
extern void v15 (signed int, signed short);
extern void (*v16) (signed int, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
void v19 (unsigned char, signed short, signed short);
void (*v20) (unsigned char, signed short, signed short) = v19;
extern void v21 (unsigned char, signed char);
extern void (*v22) (unsigned char, signed char);
extern unsigned char v23 (signed char, unsigned short, unsigned short);
extern unsigned char (*v24) (signed char, unsigned short, unsigned short);
unsigned short v25 (signed short, signed char, unsigned char);
unsigned short (*v26) (signed short, signed char, unsigned char) = v25;
extern void v27 (signed short, signed int, signed int);
extern void (*v28) (signed short, signed int, signed int);
signed char v29 (signed char);
signed char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned short v32 = 5;
signed int v31 = -1;

signed char v29 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -1;
unsigned short v36 = 3;
signed short v35 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (signed short v38, signed char v39, unsigned char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = -2;
signed short v42 = -4;
signed char v41 = -1;
trace++;
switch (trace)
{
case 1: 
{
signed int v44;
signed short v45;
signed short v46;
signed char v47;
v44 = 2 + 3;
v45 = v42 + v38;
v46 = v42 + v38;
v47 = v11 (v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 11: 
return 6;
default: abort ();
}
}
}
}

void v19 (unsigned char v48, signed short v49, signed short v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned int v53 = 3U;
signed char v52 = 1;
signed short v51 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = -4;
signed int v56 = -2;
unsigned short v55 = 4;
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
unsigned char v60;
signed char v61;
signed int v62;
v60 = 1 - 0;
v61 = -2 - v33;
v62 = v1 (v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
