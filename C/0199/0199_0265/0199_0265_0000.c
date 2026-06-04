#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
signed int v3 (signed short, signed short, unsigned short);
signed int (*v4) (signed short, signed short, unsigned short) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
unsigned char v9 (unsigned char, signed char, signed int);
unsigned char (*v10) (unsigned char, signed char, signed int) = v9;
unsigned int v11 (signed short);
unsigned int (*v12) (signed short) = v11;
extern unsigned int v13 (unsigned short, unsigned int);
extern unsigned int (*v14) (unsigned short, unsigned int);
signed int v15 (unsigned short);
signed int (*v16) (unsigned short) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed int v23 (signed char, unsigned int, unsigned char, signed int);
extern signed int (*v24) (signed char, unsigned int, unsigned char, signed int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v27 (signed short, signed int, unsigned int);
extern signed int (*v28) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
signed int v32 = -4;
signed short v31 = 3;

signed int v19 (void)
{
{
for (;;) {
signed int v36 = -3;
signed int v35 = -1;
unsigned int v34 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned short v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -2;
signed char v39 = 1;
unsigned int v38 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 2;
unsigned char v43 = 5;
signed int v42 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v45, signed char v46, signed int v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 0;
unsigned int v49 = 6U;
unsigned int v48 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v51, signed short v52, unsigned short v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = -3;
signed int v55 = 3;
signed char v54 = -1;
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
unsigned int v59;
v59 = 0U + 4U;
v1 (v59);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
