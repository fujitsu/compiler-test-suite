#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short, unsigned int);
extern unsigned short (*v2) (unsigned short, unsigned short, unsigned int);
signed int v3 (signed int);
signed int (*v4) (signed int) = v3;
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (unsigned int, signed char);
extern void (*v12) (unsigned int, signed char);
extern signed char v13 (signed short, unsigned short, signed int);
extern signed char (*v14) (signed short, unsigned short, signed int);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
signed int v19 (signed int, signed int, signed int, signed int);
signed int (*v20) (signed int, signed int, signed int, signed int) = v19;
signed char v21 (unsigned short, unsigned char, unsigned char);
signed char (*v22) (unsigned short, unsigned char, unsigned char) = v21;
extern void v23 (signed short, unsigned char);
extern void (*v24) (signed short, unsigned char);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
signed short v29 (signed int);
signed short (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
signed char v32 = 3;
unsigned char v31 = 3;

signed short v29 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 3;
unsigned int v36 = 6U;
unsigned char v35 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v38, unsigned char v39, unsigned char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 0;
unsigned char v42 = 6;
unsigned char v41 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed int v44, signed int v45, signed int v46, signed int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 6U;
unsigned int v49 = 0U;
signed char v48 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v53 = 4U;
signed char v52 = 1;
unsigned int v51 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 0;
signed int v56 = 0;
signed char v55 = 0;
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
unsigned short v60;
unsigned short v61;
unsigned int v62;
unsigned short v63;
v60 = 4 + 7;
v61 = 1 - 7;
v62 = 0U - 2U;
v63 = v1 (v60, v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
