#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned short, signed short);
extern signed char (*v2) (unsigned short, signed short);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern unsigned char v13 (unsigned char, signed short);
extern unsigned char (*v14) (unsigned char, signed short);
unsigned short v15 (signed short, unsigned char);
unsigned short (*v16) (signed short, unsigned char) = v15;
extern unsigned int v17 (signed short, unsigned int, signed int);
extern unsigned int (*v18) (signed short, unsigned int, signed int);
signed char v19 (unsigned char);
signed char (*v20) (unsigned char) = v19;
signed char v21 (signed int, signed char);
signed char (*v22) (signed int, signed char) = v21;
extern unsigned int v23 (unsigned char, signed short, signed char, unsigned int);
extern unsigned int (*v24) (unsigned char, signed short, signed char, unsigned int);
extern signed char v25 (signed short, signed short, unsigned int, signed short);
extern signed char (*v26) (signed short, signed short, unsigned int, signed short);
extern signed char v27 (unsigned int);
extern signed char (*v28) (unsigned int);
signed char v29 (unsigned int, signed short, unsigned int);
signed char (*v30) (unsigned int, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed char v32 = -1;
signed char v31 = -2;

signed char v29 (unsigned int v34, signed short v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 2;
signed char v38 = -1;
unsigned int v37 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed int v40, signed char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = -2;
signed char v43 = 1;
unsigned int v42 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned char v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
unsigned char v48 = 5;
signed char v47 = -1;
unsigned short v46 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed short v49, unsigned char v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = 2;
signed short v52 = -2;
unsigned char v51 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned short v56 = 1;
signed int v55 = 0;
unsigned short v54 = 0;
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
unsigned short v59;
signed short v60;
signed char v61;
v59 = 7 - 4;
v60 = v33 - 0;
v61 = v1 (v59, v60);
history[history_index++] = (int)v61;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
