#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int, signed char, unsigned char, unsigned char);
extern signed int (*v2) (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern unsigned char v5 (signed short, signed short, signed char);
extern unsigned char (*v6) (signed short, signed short, signed char);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
void v9 (unsigned char, signed char, signed short, unsigned int);
void (*v10) (unsigned char, signed char, signed short, unsigned int) = v9;
signed short v11 (signed int, unsigned short, unsigned int);
signed short (*v12) (signed int, unsigned short, unsigned int) = v11;
extern signed int v13 (signed char, signed short, unsigned int);
extern signed int (*v14) (signed char, signed short, unsigned int);
extern signed int v15 (signed char, signed int, unsigned short);
extern signed int (*v16) (signed char, signed int, unsigned short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
unsigned int v19 (signed char, signed int);
unsigned int (*v20) (signed char, signed int) = v19;
extern unsigned int v21 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, signed int, unsigned char, unsigned short);
extern signed short v23 (unsigned short, unsigned char);
extern signed short (*v24) (unsigned short, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
signed char v27 (signed short, unsigned int, signed char);
signed char (*v28) (signed short, unsigned int, signed char) = v27;
extern unsigned int v29 (signed char, signed int, unsigned short);
extern unsigned int (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
unsigned short v32 = 3;
unsigned char v31 = 1;

signed char v27 (signed short v34, unsigned int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 6;
signed short v38 = 3;
unsigned short v37 = 5;
trace++;
switch (trace)
{
case 2: 
return -1;
case 9: 
return v36;
case 11: 
return v36;
default: abort ();
}
}
}
}

unsigned int v19 (signed char v40, signed int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 0;
unsigned short v43 = 0;
signed char v42 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v45, unsigned short v46, unsigned int v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = -1;
unsigned char v49 = 3;
unsigned char v48 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned char v51, signed char v52, signed short v53, unsigned int v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = -1;
signed int v56 = -2;
signed short v55 = -4;
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
unsigned int v60;
signed char v61;
unsigned char v62;
unsigned char v63;
signed int v64;
v60 = 1U - 3U;
v61 = -2 + 0;
v62 = 1 + 6;
v63 = v31 - v31;
v64 = v1 (v60, v61, v62, v63);
history[history_index++] = (int)v64;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
