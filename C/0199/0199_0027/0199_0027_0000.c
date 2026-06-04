#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, unsigned short);
extern void (*v2) (signed char, unsigned short);
void v3 (unsigned int, unsigned short, signed short, unsigned short);
void (*v4) (unsigned int, unsigned short, signed short, unsigned short) = v3;
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
extern unsigned short v7 (unsigned int, signed short, signed short);
extern unsigned short (*v8) (unsigned int, signed short, signed short);
extern unsigned int v9 (signed int, signed int, unsigned short);
extern unsigned int (*v10) (signed int, signed int, unsigned short);
extern signed short v11 (unsigned int, unsigned short, unsigned int, unsigned short);
extern signed short (*v12) (unsigned int, unsigned short, unsigned int, unsigned short);
extern void v13 (signed char, unsigned short, signed int, unsigned short);
extern void (*v14) (signed char, unsigned short, signed int, unsigned short);
signed int v15 (unsigned int, unsigned int);
signed int (*v16) (unsigned int, unsigned int) = v15;
extern signed short v17 (signed short, unsigned int, signed char);
extern signed short (*v18) (signed short, unsigned int, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (unsigned short, unsigned int, signed short, unsigned char);
extern signed short (*v22) (unsigned short, unsigned int, signed short, unsigned char);
extern signed short v23 (unsigned char, signed char, unsigned char);
extern signed short (*v24) (unsigned char, signed char, unsigned char);
signed char v25 (signed short, signed int, unsigned int, signed short);
signed char (*v26) (signed short, signed int, unsigned int, signed short) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned short v29 (unsigned short, signed short);
extern unsigned short (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
signed int v32 = 1;
unsigned short v31 = 6;

signed char v25 (signed short v34, signed int v35, unsigned int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -2;
signed int v39 = 0;
unsigned short v38 = 4;
trace++;
switch (trace)
{
case 10: 
{
signed short v41;
signed int v42;
unsigned int v43;
signed short v44;
signed char v45;
v41 = v37 + v34;
v42 = v39 - 1;
v43 = v36 - v36;
v44 = v40 + v37;
v45 = v25 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 11: 
return 0;
case 12: 
return -4;
default: abort ();
}
}
}
}

signed int v15 (unsigned int v46, unsigned int v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 3;
unsigned short v49 = 3;
signed short v48 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned int v51, unsigned short v52, signed short v53, unsigned short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = 3;
signed int v56 = 2;
signed int v55 = -3;
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
signed char v60;
unsigned short v61;
v60 = 0 - -1;
v61 = 2 + 3;
v1 (v60, v61);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
