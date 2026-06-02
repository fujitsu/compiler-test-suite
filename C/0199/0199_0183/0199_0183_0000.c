#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (unsigned int, signed short, signed short);
extern unsigned int (*v4) (unsigned int, signed short, signed short);
extern signed int v5 (void);
extern signed int (*v6) (void);
unsigned int v7 (unsigned int);
unsigned int (*v8) (unsigned int) = v7;
extern unsigned short v9 (signed short, signed int, unsigned char);
extern unsigned short (*v10) (signed short, signed int, unsigned char);
unsigned short v11 (signed int, unsigned char);
unsigned short (*v12) (signed int, unsigned char) = v11;
signed int v13 (signed char);
signed int (*v14) (signed char) = v13;
extern unsigned int v15 (signed short, unsigned int);
extern unsigned int (*v16) (signed short, unsigned int);
extern void v17 (signed char, unsigned int, unsigned short);
extern void (*v18) (signed char, unsigned int, unsigned short);
extern unsigned int v19 (unsigned int, unsigned short, signed short, signed char);
extern unsigned int (*v20) (unsigned int, unsigned short, signed short, signed char);
extern signed int v21 (unsigned char, signed short);
extern signed int (*v22) (unsigned char, signed short);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed short, signed int, signed int, signed char);
extern unsigned short (*v30) (signed short, signed int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
unsigned short v32 = 1;
unsigned char v31 = 3;

signed int v13 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 1;
signed short v36 = 3;
unsigned short v35 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed int v38, unsigned char v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = -4;
signed short v41 = -4;
unsigned int v40 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 7U;
signed int v45 = -1;
signed int v44 = -1;
trace++;
switch (trace)
{
case 10: 
{
signed short v47;
unsigned int v48;
unsigned int v49;
v47 = 2 + -1;
v48 = 5U - v46;
v49 = v15 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 12: 
return v43;
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
signed int v52;
v52 = v1 ();
history[history_index++] = (int)v52;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
