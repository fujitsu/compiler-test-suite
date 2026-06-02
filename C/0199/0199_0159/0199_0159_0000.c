#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned int);
extern unsigned short (*v2) (unsigned int);
extern unsigned char v3 (unsigned short);
extern unsigned char (*v4) (unsigned short);
extern unsigned short v5 (signed char, signed short);
extern unsigned short (*v6) (signed char, signed short);
extern unsigned int v7 (unsigned char, unsigned int, signed char);
extern unsigned int (*v8) (unsigned char, unsigned int, signed char);
extern void v9 (unsigned char, unsigned int, signed short, signed char);
extern void (*v10) (unsigned char, unsigned int, signed short, signed char);
void v11 (signed short, signed char, signed char);
void (*v12) (signed short, signed char, signed char) = v11;
unsigned int v13 (signed short);
unsigned int (*v14) (signed short) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned int v19 (unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned char);
extern void v21 (signed int, signed int, unsigned short);
extern void (*v22) (signed int, signed int, unsigned short);
extern signed short v23 (unsigned char, signed char, signed int, signed char);
extern signed short (*v24) (unsigned char, signed char, signed int, signed char);
signed char v25 (unsigned short, unsigned char, unsigned int, unsigned short);
signed char (*v26) (unsigned short, unsigned char, unsigned int, unsigned short) = v25;
extern signed int v27 (unsigned short, unsigned char);
extern signed int (*v28) (unsigned short, unsigned char);
signed int v29 (unsigned short, unsigned short, signed char);
signed int (*v30) (unsigned short, unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
unsigned short v32 = 3;
unsigned short v31 = 2;

signed int v29 (unsigned short v34, unsigned short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 3;
unsigned short v38 = 5;
unsigned char v37 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (unsigned short v40, unsigned char v41, unsigned int v42, unsigned short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = 0;
signed char v45 = 3;
unsigned int v44 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = -2;
unsigned int v49 = 3U;
unsigned int v48 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v51, signed char v52, signed char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned short v56 = 1;
unsigned short v55 = 7;
unsigned int v54 = 0U;
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
unsigned short v60;
v59 = 6U + 3U;
v60 = v1 (v59);
history[history_index++] = (int)v60;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
