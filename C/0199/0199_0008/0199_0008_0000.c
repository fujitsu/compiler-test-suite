#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, signed int, unsigned int, signed short);
extern void (*v2) (unsigned short, signed int, unsigned int, signed short);
unsigned char v3 (unsigned char);
unsigned char (*v4) (unsigned char) = v3;
extern unsigned int v5 (unsigned short, signed char);
extern unsigned int (*v6) (unsigned short, signed char);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (signed short);
extern unsigned short (*v12) (signed short);
extern signed char v13 (void);
extern signed char (*v14) (void);
signed short v15 (unsigned int);
signed short (*v16) (unsigned int) = v15;
extern void v17 (signed char);
extern void (*v18) (signed char);
extern signed short v19 (signed char, signed int);
extern signed short (*v20) (signed char, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
signed short v25 (void);
signed short (*v26) (void) = v25;
unsigned char v27 (signed short, unsigned short);
unsigned char (*v28) (signed short, unsigned short) = v27;
extern unsigned int v29 (unsigned int, unsigned char);
extern unsigned int (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed short v32 = 2;
unsigned int v31 = 5U;

unsigned char v27 (signed short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = -2;
unsigned char v37 = 4;
unsigned int v36 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (void)
{
{
for (;;) {
unsigned char v41 = 4;
unsigned char v40 = 5;
unsigned short v39 = 2;
trace++;
switch (trace)
{
case 3: 
return -2;
case 5: 
return 2;
case 7: 
return 0;
default: abort ();
}
}
}
}

signed short v15 (unsigned int v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 7U;
signed int v44 = -2;
unsigned char v43 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 7;
unsigned short v48 = 2;
signed short v47 = -1;
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
unsigned short v52;
signed int v53;
unsigned int v54;
signed short v55;
v52 = 0 - 4;
v53 = -3 - 2;
v54 = 5U + v33;
v55 = -2 - -4;
v1 (v52, v53, v54, v55);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
