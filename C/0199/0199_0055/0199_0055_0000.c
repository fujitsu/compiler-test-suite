#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (signed int, unsigned char);
extern signed int (*v4) (signed int, unsigned char);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern unsigned char v7 (unsigned int, signed char, signed short);
extern unsigned char (*v8) (unsigned int, signed char, signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned short v11 (signed short, signed short);
unsigned short (*v12) (signed short, signed short) = v11;
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern void v19 (signed char, signed short, signed int, signed char);
extern void (*v20) (signed char, signed short, signed int, signed char);
extern signed short v21 (signed int, unsigned char, unsigned short);
extern signed short (*v22) (signed int, unsigned char, unsigned short);
extern signed short v25 (unsigned char, signed char, unsigned int);
extern signed short (*v26) (unsigned char, signed char, unsigned int);
signed int v27 (unsigned short, signed int, signed short, signed short);
signed int (*v28) (unsigned short, signed int, signed short, signed short) = v27;
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned int v32 = 0U;
unsigned int v31 = 6U;

signed char v29 (void)
{
{
for (;;) {
unsigned short v36 = 7;
unsigned short v35 = 4;
signed short v34 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (unsigned short v37, signed int v38, signed short v39, signed short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = 3;
signed short v42 = 1;
signed char v41 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed short v44, signed short v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 7U;
unsigned char v47 = 2;
unsigned char v46 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
signed char v51 = -4;
unsigned short v50 = 0;
signed short v49 = 2;
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
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
