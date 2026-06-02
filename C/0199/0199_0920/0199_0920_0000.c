#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
unsigned short v3 (signed int, signed char);
unsigned short (*v4) (signed int, signed char) = v3;
extern void v5 (signed char);
extern void (*v6) (signed char);
unsigned short v7 (signed char);
unsigned short (*v8) (signed char) = v7;
extern signed int v9 (unsigned char, unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned char, unsigned int);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern unsigned int v13 (signed short, signed int, signed int, signed int);
extern unsigned int (*v14) (signed short, signed int, signed int, signed int);
extern unsigned char v15 (signed int, unsigned char);
extern unsigned char (*v16) (signed int, unsigned char);
extern unsigned short v17 (signed short, signed int, signed char);
extern unsigned short (*v18) (signed short, signed int, signed char);
extern void v19 (void);
extern void (*v20) (void);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern signed int v23 (unsigned int, signed char);
extern signed int (*v24) (unsigned int, signed char);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int, signed char);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int, signed char);
signed int v27 (signed char, signed int, unsigned short);
signed int (*v28) (signed char, signed int, unsigned short) = v27;
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned int v32 = 0U;
signed short v31 = 3;

signed int v27 (signed char v34, signed int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 7;
signed char v38 = 2;
signed int v37 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
unsigned short v42 = 0;
signed char v41 = -1;
signed short v40 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = -3;
signed short v45 = -2;
signed char v44 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed int v47, signed char v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = 1;
unsigned int v50 = 3U;
unsigned char v49 = 1;
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
signed int v54;
v54 = v1 ();
history[history_index++] = (int)v54;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
