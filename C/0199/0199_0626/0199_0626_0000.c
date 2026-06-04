#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
unsigned int v3 (signed int, unsigned int, signed short);
unsigned int (*v4) (signed int, unsigned int, signed short) = v3;
extern unsigned char v5 (unsigned int, unsigned char);
extern unsigned char (*v6) (unsigned int, unsigned char);
extern signed int v7 (signed short, signed int, signed short, signed short);
extern signed int (*v8) (signed short, signed int, signed short, signed short);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern unsigned char v11 (signed char, unsigned int, unsigned short, signed short);
extern unsigned char (*v12) (signed char, unsigned int, unsigned short, signed short);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed short v15 (void);
extern signed short (*v16) (void);
unsigned char v17 (unsigned short);
unsigned char (*v18) (unsigned short) = v17;
unsigned short v19 (signed int);
unsigned short (*v20) (signed int) = v19;
extern unsigned short v21 (signed short, signed int);
extern unsigned short (*v22) (signed short, signed int);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
signed short v27 (signed char, signed char, unsigned short, unsigned short);
signed short (*v28) (signed char, signed char, unsigned short, unsigned short) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
unsigned short v32 = 7;
signed char v31 = -4;

signed short v27 (signed char v34, signed char v35, unsigned short v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 4;
unsigned char v39 = 4;
signed short v38 = 1;
trace++;
switch (trace)
{
case 6: 
return -1;
case 8: 
{
signed short v41;
signed int v42;
unsigned short v43;
v41 = v38 + -3;
v42 = -2 - 3;
v43 = v21 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 14: 
return v38;
default: abort ();
}
}
}
}

unsigned short v19 (signed int v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 1U;
unsigned short v46 = 1;
unsigned short v45 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = 3;
signed short v50 = -2;
unsigned char v49 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed int v52, unsigned int v53, signed short v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = 0;
signed short v56 = -2;
unsigned char v55 = 2;
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
unsigned int v61;
v60 = v31 - 1;
v61 = v1 (v60);
history[history_index++] = (int)v61;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
