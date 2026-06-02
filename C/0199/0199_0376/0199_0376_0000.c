#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int, signed char, unsigned int, signed short);
extern signed int (*v2) (unsigned int, signed char, unsigned int, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
signed short v7 (unsigned char, signed char, unsigned short);
signed short (*v8) (unsigned char, signed char, unsigned short) = v7;
extern unsigned int v9 (signed int, signed short, signed int, signed int);
extern unsigned int (*v10) (signed int, signed short, signed int, signed int);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern signed int v13 (unsigned short, signed char, signed short, signed int);
extern signed int (*v14) (unsigned short, signed char, signed short, signed int);
signed short v17 (unsigned char, signed short);
signed short (*v18) (unsigned char, signed short) = v17;
extern signed int v19 (unsigned char, signed char, signed short);
extern signed int (*v20) (unsigned char, signed char, signed short);
extern unsigned short v21 (unsigned char, unsigned short);
extern unsigned short (*v22) (unsigned char, unsigned short);
unsigned char v25 (unsigned int, signed int, unsigned char, unsigned short);
unsigned char (*v26) (unsigned int, signed int, unsigned char, unsigned short) = v25;
void v27 (unsigned char, signed int, signed short, unsigned int);
void (*v28) (unsigned char, signed int, signed short, unsigned int) = v27;
extern signed short v29 (unsigned char, signed int, signed int);
extern signed short (*v30) (unsigned char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed int v32 = 3;
signed int v31 = -3;

void v27 (unsigned char v34, signed int v35, signed short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -4;
signed char v39 = 1;
unsigned short v38 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (unsigned int v41, signed int v42, unsigned char v43, unsigned short v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 5;
unsigned short v46 = 3;
signed char v45 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned char v48, signed short v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 5;
unsigned int v51 = 1U;
unsigned short v50 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned char v53, signed char v54, unsigned short v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 4U;
signed short v57 = 3;
signed int v56 = 2;
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
unsigned int v61;
signed char v62;
unsigned int v63;
signed short v64;
signed int v65;
v61 = 0U - 1U;
v62 = 1 - -3;
v63 = 1U - 4U;
v64 = -1 - 3;
v65 = v1 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
