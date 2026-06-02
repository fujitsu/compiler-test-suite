#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (signed short, unsigned short, unsigned int);
extern void (*v4) (signed short, unsigned short, unsigned int);
extern void v5 (void);
extern void (*v6) (void);
extern signed char v7 (unsigned int);
extern signed char (*v8) (unsigned int);
extern unsigned int v9 (unsigned int, signed int);
extern unsigned int (*v10) (unsigned int, signed int);
extern signed short v11 (signed char, signed short, signed char, signed char);
extern signed short (*v12) (signed char, signed short, signed char, signed char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
unsigned short v15 (unsigned int, signed int, signed short, unsigned int);
unsigned short (*v16) (unsigned int, signed int, signed short, unsigned int) = v15;
unsigned int v17 (unsigned char);
unsigned int (*v18) (unsigned char) = v17;
signed short v19 (void);
signed short (*v20) (void) = v19;
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern signed short v25 (unsigned int, signed char, unsigned short);
extern signed short (*v26) (unsigned int, signed char, unsigned short);
extern signed char v29 (signed short, signed short, signed int);
extern signed char (*v30) (signed short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned short v32 = 6;
signed short v31 = 3;

unsigned short v21 (void)
{
{
for (;;) {
signed int v36 = 2;
signed short v35 = -2;
signed char v34 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
unsigned char v39 = 1;
signed char v38 = 1;
signed int v37 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 0;
signed int v42 = -1;
signed char v41 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v44, signed int v45, signed short v46, unsigned int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 1;
signed char v49 = -4;
unsigned short v48 = 0;
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
signed char v53;
v53 = v1 ();
history[history_index++] = (int)v53;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
