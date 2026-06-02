#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
signed int v3 (signed int, signed char, unsigned int);
signed int (*v4) (signed int, signed char, unsigned int) = v3;
extern signed int v5 (signed char, signed char, unsigned int);
extern signed int (*v6) (signed char, signed char, unsigned int);
extern signed char v7 (unsigned short);
extern signed char (*v8) (unsigned short);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern unsigned int v13 (unsigned char, unsigned int);
extern unsigned int (*v14) (unsigned char, unsigned int);
extern unsigned int v15 (unsigned short, signed char, unsigned char);
extern unsigned int (*v16) (unsigned short, signed char, unsigned char);
extern signed short v17 (unsigned short, signed char);
extern signed short (*v18) (unsigned short, signed char);
unsigned char v19 (unsigned int);
unsigned char (*v20) (unsigned int) = v19;
extern signed char v21 (unsigned int, signed short, unsigned short);
extern signed char (*v22) (unsigned int, signed short, unsigned short);
extern signed char v23 (signed int);
extern signed char (*v24) (signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
signed int v29 (signed int);
signed int (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed int v32 = -2;
unsigned short v31 = 1;

signed int v29 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 3;
unsigned int v36 = 4U;
signed short v35 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned short v41 = 4;
signed int v40 = -2;
unsigned short v39 = 5;
trace++;
switch (trace)
{
case 8: 
return 4;
case 10: 
return 0;
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
unsigned short v44 = 5;
signed int v43 = -4;
unsigned short v42 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v45, signed char v46, unsigned int v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 1U;
signed int v49 = 3;
unsigned short v48 = 7;
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
unsigned char v53;
v53 = v1 ();
history[history_index++] = (int)v53;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
