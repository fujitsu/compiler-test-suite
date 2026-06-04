#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned int, unsigned char, signed short, unsigned char);
extern unsigned short (*v2) (unsigned int, unsigned char, signed short, unsigned char);
unsigned int v3 (unsigned char);
unsigned int (*v4) (unsigned char) = v3;
extern unsigned char v5 (signed int, signed short);
extern unsigned char (*v6) (signed int, signed short);
signed char v7 (signed int, signed char);
signed char (*v8) (signed int, signed char) = v7;
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern signed int v11 (unsigned int, unsigned int, signed short);
extern signed int (*v12) (unsigned int, unsigned int, signed short);
extern unsigned short v13 (unsigned short, signed short, signed int, unsigned short);
extern unsigned short (*v14) (unsigned short, signed short, signed int, unsigned short);
extern signed char v15 (signed int, unsigned int, unsigned short, unsigned int);
extern signed char (*v16) (signed int, unsigned int, unsigned short, unsigned int);
unsigned int v17 (signed char, signed int, signed short, signed char);
unsigned int (*v18) (signed char, signed int, signed short, signed char) = v17;
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern signed short v21 (signed int, unsigned int);
extern signed short (*v22) (signed int, unsigned int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (unsigned char, unsigned int, unsigned char, unsigned char);
extern signed char (*v26) (unsigned char, unsigned int, unsigned char, unsigned char);
extern unsigned char v27 (unsigned char, signed char);
extern unsigned char (*v28) (unsigned char, signed char);
extern unsigned short v29 (unsigned char, unsigned int, unsigned short, unsigned short);
extern unsigned short (*v30) (unsigned char, unsigned int, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
unsigned char v32 = 5;
signed short v31 = -3;

unsigned int v17 (signed char v34, signed int v35, signed short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -2;
unsigned short v39 = 0;
signed short v38 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed short v43 = -1;
unsigned int v42 = 6U;
unsigned int v41 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed int v44, signed char v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed short v48 = -1;
unsigned char v47 = 2;
unsigned short v46 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 4;
signed short v51 = 2;
signed short v50 = -4;
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
unsigned int v55;
unsigned char v56;
signed short v57;
unsigned char v58;
unsigned short v59;
v55 = 7U - 4U;
v56 = v33 + v32;
v57 = v31 - -2;
v58 = v33 - v32;
v59 = v1 (v55, v56, v57, v58);
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
