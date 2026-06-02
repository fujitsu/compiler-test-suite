#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short, unsigned char, unsigned char, signed int);
extern void (*v2) (signed short, unsigned char, unsigned char, signed int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern void v5 (signed short);
extern void (*v6) (signed short);
unsigned char v7 (unsigned int, unsigned short, signed int);
unsigned char (*v8) (unsigned int, unsigned short, signed int) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed char v11 (signed short, signed int, signed char);
extern signed char (*v12) (signed short, signed int, signed char);
extern signed char v13 (unsigned short, signed char, unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, signed char, unsigned short, unsigned int);
void v15 (unsigned char);
void (*v16) (unsigned char) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
void v21 (unsigned int, unsigned int, signed char, unsigned char);
void (*v22) (unsigned int, unsigned int, signed char, unsigned char) = v21;
signed short v23 (signed short, signed short, signed int);
signed short (*v24) (signed short, signed short, signed int) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed char, unsigned int, signed char);
extern void (*v30) (signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned short v32 = 1;
unsigned int v31 = 3U;

signed short v23 (signed short v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -1;
signed char v38 = -2;
signed int v37 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned int v40, unsigned int v41, signed char v42, unsigned char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 6;
signed short v45 = 1;
unsigned short v44 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = -2;
signed short v49 = -4;
signed int v48 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v51, unsigned short v52, signed int v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 4;
unsigned short v55 = 1;
signed int v54 = -2;
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
signed short v59;
unsigned char v60;
unsigned char v61;
signed int v62;
v59 = 2 + v33;
v60 = 5 - 4;
v61 = 2 + 1;
v62 = 2 + -1;
v1 (v59, v60, v61, v62);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
