#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern void v3 (signed int);
extern void (*v4) (signed int);
unsigned short v5 (unsigned int, signed int, unsigned char);
unsigned short (*v6) (unsigned int, signed int, unsigned char) = v5;
extern unsigned short v7 (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned short (*v8) (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern unsigned short v11 (unsigned char, unsigned int);
extern unsigned short (*v12) (unsigned char, unsigned int);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
unsigned short v15 (unsigned char, signed int, signed char, signed int);
unsigned short (*v16) (unsigned char, signed int, signed char, signed int) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (unsigned short, unsigned int);
extern void (*v20) (unsigned short, unsigned int);
extern unsigned char v21 (signed short, signed short, unsigned short);
extern unsigned char (*v22) (signed short, signed short, unsigned short);
signed char v23 (void);
signed char (*v24) (void) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned int v27 (unsigned int);
unsigned int (*v28) (unsigned int) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed char v32 = -3;
unsigned int v31 = 6U;

unsigned int v27 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 1U;
signed short v36 = 0;
signed short v35 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed int v38;
v38 = v29 ();
history[history_index++] = (int)v38;
}
break;
case 14: 
return v34;
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
unsigned int v41 = 7U;
signed int v40 = 0;
unsigned short v39 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v42, signed int v43, signed char v44, signed int v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed int v48 = 3;
unsigned int v47 = 4U;
signed int v46 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned int v49, signed int v50, unsigned char v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 2U;
signed int v53 = 3;
unsigned short v52 = 0;
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
v1 ();
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
