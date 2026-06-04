#include <stdio.h>
#include <stdlib.h>
static signed int v1 (unsigned short, unsigned int, signed short, unsigned int);
static signed int (*v2) (unsigned short, unsigned int, signed short, unsigned int) = v1;
extern unsigned int v3 (signed char, unsigned char, unsigned short);
extern unsigned int (*v4) (signed char, unsigned char, unsigned short);
unsigned short v5 (unsigned char, unsigned short, signed short);
unsigned short (*v6) (unsigned char, unsigned short, signed short) = v5;
extern unsigned int v7 (unsigned char, signed char, unsigned int);
extern unsigned int (*v8) (unsigned char, signed char, unsigned int);
extern void v9 (unsigned int, unsigned char, signed char, unsigned char);
extern void (*v10) (unsigned int, unsigned char, signed char, unsigned char);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (unsigned char, unsigned int);
extern signed int (*v16) (unsigned char, unsigned int);
extern signed int v17 (void);
extern signed int (*v18) (void);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
signed char v21 (unsigned char);
signed char (*v22) (unsigned char) = v21;
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern void v27 (signed int);
extern void (*v28) (signed int);
extern unsigned int v29 (unsigned char, signed short);
extern unsigned int (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
signed int v32 = -4;
signed short v31 = 2;

signed char v21 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -3;
unsigned int v36 = 5U;
signed int v35 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
unsigned short v40 = 4;
signed short v39 = -1;
unsigned char v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v41, unsigned short v42, signed short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 1;
unsigned short v45 = 7;
signed char v44 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (unsigned short v47, unsigned int v48, signed short v49, unsigned int v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = -3;
signed char v52 = -1;
signed char v51 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v54;
signed char v55;
unsigned int v56;
unsigned int v57;
v54 = 1 - 6;
v55 = v52 + v51;
v56 = v50 + 3U;
v57 = v7 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 12: 
return 3;
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
unsigned int v61;
signed short v62;
unsigned int v63;
signed int v64;
v60 = 0 + 0;
v61 = 2U - 5U;
v62 = v31 + 3;
v63 = 5U + 3U;
v64 = v1 (v60, v61, v62, v63);
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
