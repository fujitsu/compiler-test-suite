#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short, signed char);
extern unsigned char (*v2) (signed short, signed char);
extern signed short v3 (signed char, signed int, unsigned char, signed char);
extern signed short (*v4) (signed char, signed int, unsigned char, signed char);
extern void v5 (unsigned char, unsigned int);
extern void (*v6) (unsigned char, unsigned int);
extern unsigned short v7 (signed char, signed int, signed char, signed int);
extern unsigned short (*v8) (signed char, signed int, signed char, signed int);
extern signed char v9 (unsigned short, unsigned char, signed int);
extern signed char (*v10) (unsigned short, unsigned char, signed int);
extern signed int v11 (unsigned short, signed int, unsigned char);
extern signed int (*v12) (unsigned short, signed int, unsigned char);
extern void v13 (signed int, signed int, unsigned int);
extern void (*v14) (signed int, signed int, unsigned int);
extern signed char v15 (void);
extern signed char (*v16) (void);
signed short v17 (signed int, signed int, signed char, unsigned short);
signed short (*v18) (signed int, signed int, signed char, unsigned short) = v17;
unsigned short v19 (unsigned int, signed char);
unsigned short (*v20) (unsigned int, signed char) = v19;
void v21 (void);
void (*v22) (void) = v21;
unsigned char v23 (signed int, unsigned short, unsigned short, signed char);
unsigned char (*v24) (signed int, unsigned short, unsigned short, signed char) = v23;
unsigned char v25 (unsigned short);
unsigned char (*v26) (unsigned short) = v25;
extern signed int v27 (signed int, unsigned char);
extern signed int (*v28) (signed int, unsigned char);
extern signed short v29 (signed char, unsigned char, signed short, signed short);
extern signed short (*v30) (signed char, unsigned char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed int v32 = -1;
signed char v31 = 0;

unsigned char v25 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 4U;
signed int v36 = 3;
unsigned short v35 = 3;
trace++;
switch (trace)
{
case 4: 
return 4;
case 6: 
return 1;
case 8: 
return 0;
default: abort ();
}
}
}
}

unsigned char v23 (signed int v38, unsigned short v39, unsigned short v40, signed char v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 0U;
unsigned int v43 = 7U;
unsigned short v42 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
signed char v47 = 3;
signed short v46 = 1;
unsigned short v45 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned int v48, signed char v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 0;
unsigned int v51 = 1U;
unsigned short v50 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed int v53, signed int v54, signed char v55, unsigned short v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 7;
signed short v58 = -2;
signed char v57 = -3;
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
signed short v62;
signed char v63;
unsigned char v64;
v62 = -1 + -3;
v63 = v31 + v31;
v64 = v1 (v62, v63);
history[history_index++] = (int)v64;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
