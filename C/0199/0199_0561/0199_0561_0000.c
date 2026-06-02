#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern signed int v7 (signed int);
extern signed int (*v8) (signed int);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
unsigned short v15 (signed int, unsigned int);
unsigned short (*v16) (signed int, unsigned int) = v15;
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
unsigned short v21 (unsigned char, signed char, signed short);
unsigned short (*v22) (unsigned char, signed char, signed short) = v21;
extern unsigned int v23 (unsigned int, unsigned int, unsigned int, unsigned char);
extern unsigned int (*v24) (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
signed short v27 (signed char, unsigned char);
signed short (*v28) (signed char, unsigned char) = v27;
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
unsigned short v32 = 3;
signed char v31 = -1;

signed short v27 (signed char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 0;
unsigned short v37 = 0;
signed char v36 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned char v39, signed char v40, signed short v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 4;
signed int v43 = 2;
unsigned short v42 = 2;
trace++;
switch (trace)
{
case 8: 
return v42;
case 10: 
return v42;
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned int v47 = 6U;
unsigned int v46 = 4U;
signed char v45 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed int v48, unsigned int v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = -1;
unsigned int v51 = 4U;
unsigned short v50 = 1;
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
unsigned short v55;
v55 = v1 ();
history[history_index++] = (int)v55;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
