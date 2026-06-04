#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, unsigned short, signed short, signed char);
extern signed short (*v2) (signed char, unsigned short, signed short, signed char);
extern unsigned char v3 (unsigned int, unsigned short, signed short);
extern unsigned char (*v4) (unsigned int, unsigned short, signed short);
extern signed char v5 (signed char, unsigned short);
extern signed char (*v6) (signed char, unsigned short);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (unsigned char, unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned char, unsigned short, unsigned int);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern unsigned int v13 (signed int, unsigned int, signed char);
extern unsigned int (*v14) (signed int, unsigned int, signed char);
signed int v15 (signed int);
signed int (*v16) (signed int) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
signed short v19 (signed char);
signed short (*v20) (signed char) = v19;
signed int v21 (unsigned char, unsigned int, signed int);
signed int (*v22) (unsigned char, unsigned int, signed int) = v21;
extern unsigned char v25 (unsigned int, signed int);
extern unsigned char (*v26) (unsigned int, signed int);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern unsigned short v29 (unsigned short, signed int, signed short);
extern unsigned short (*v30) (unsigned short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned short v32 = 1;
unsigned int v31 = 3U;

signed int v21 (unsigned char v34, unsigned int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 1;
signed char v38 = 1;
signed short v37 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 1;
unsigned int v42 = 0U;
signed char v41 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed int v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = -1;
unsigned char v46 = 0;
unsigned int v45 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed char v50 = -3;
signed int v49 = 0;
signed short v48 = -3;
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
unsigned short v54;
signed short v55;
signed char v56;
signed short v57;
v53 = -2 - 0;
v54 = 1 + v32;
v55 = v33 + v33;
v56 = 0 + -3;
v57 = v1 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
