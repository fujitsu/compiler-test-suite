#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v5 (unsigned int, signed int, unsigned short, signed short);
extern unsigned int (*v6) (unsigned int, signed int, unsigned short, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (unsigned short, signed short);
extern signed short (*v10) (unsigned short, signed short);
extern void v11 (unsigned int, signed int);
extern void (*v12) (unsigned int, signed int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned int v15 (signed short, signed short, signed char);
unsigned int (*v16) (signed short, signed short, signed char) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (signed short, unsigned short);
extern unsigned int (*v20) (signed short, unsigned short);
unsigned short v21 (signed short, unsigned char, unsigned char);
unsigned short (*v22) (signed short, unsigned char, unsigned char) = v21;
extern unsigned short v23 (unsigned short, unsigned char, signed int, signed int);
extern unsigned short (*v24) (unsigned short, unsigned char, signed int, signed int);
signed short v25 (void);
signed short (*v26) (void) = v25;
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
unsigned int v32 = 3U;
signed int v31 = -4;

unsigned char v27 (void)
{
{
for (;;) {
unsigned int v36 = 2U;
unsigned short v35 = 4;
signed char v34 = 0;
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
signed int v39 = 1;
unsigned int v38 = 5U;
signed short v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed short v40, unsigned char v41, unsigned char v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 4U;
signed int v44 = -3;
signed short v43 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed short v46, signed short v47, signed char v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 5U;
unsigned char v50 = 2;
unsigned char v49 = 6;
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
unsigned short v54;
v54 = v1 ();
history[history_index++] = (int)v54;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
