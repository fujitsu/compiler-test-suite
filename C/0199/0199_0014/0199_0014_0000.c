#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned short, signed short, unsigned short);
extern unsigned int (*v2) (unsigned char, unsigned short, signed short, unsigned short);
extern void v3 (unsigned short, signed char, signed int);
extern void (*v4) (unsigned short, signed char, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
signed short v7 (signed short, signed int);
signed short (*v8) (signed short, signed int) = v7;
extern unsigned int v9 (signed short, signed char, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int);
unsigned int v11 (unsigned char);
unsigned int (*v12) (unsigned char) = v11;
extern unsigned short v13 (signed int, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v14) (signed int, unsigned short, unsigned int, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
static signed char v17 (signed int, signed short, unsigned short, unsigned short);
static signed char (*v18) (signed int, signed short, unsigned short, unsigned short) = v17;
extern signed int v19 (unsigned short, signed int, unsigned short, unsigned char);
extern signed int (*v20) (unsigned short, signed int, unsigned short, unsigned char);
unsigned char v21 (unsigned char, signed int);
unsigned char (*v22) (unsigned char, signed int) = v21;
extern signed int v23 (unsigned char, unsigned short, unsigned int, unsigned short);
extern signed int (*v24) (unsigned char, unsigned short, unsigned int, unsigned short);
signed short v25 (unsigned char);
signed short (*v26) (unsigned char) = v25;
extern void v27 (signed char);
extern void (*v28) (signed char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
unsigned int v32 = 5U;
signed char v31 = 1;

signed short v25 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -3;
unsigned char v36 = 6;
signed short v35 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned char v38, signed int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = -2;
signed char v41 = 3;
unsigned short v40 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v17 (signed int v43, signed short v44, unsigned short v45, unsigned short v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = 1;
signed short v48 = 2;
unsigned char v47 = 0;
trace++;
switch (trace)
{
case 8: 
{
signed char v50;
v50 = 2 + -1;
v27 (v50);
}
break;
case 10: 
return 1;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 4;
signed short v53 = -1;
unsigned int v52 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v55, signed int v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = -1;
unsigned short v58 = 0;
unsigned int v57 = 4U;
trace++;
switch (trace)
{
case 5: 
{
signed char v60;
v60 = 0 + 2;
v27 (v60);
}
break;
case 7: 
{
signed int v61;
signed short v62;
unsigned short v63;
unsigned short v64;
signed char v65;
v61 = -3 + v56;
v62 = 1 + 1;
v63 = 1 - 0;
v64 = v58 - v58;
v65 = v17 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 11: 
return -2;
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
unsigned char v68;
unsigned short v69;
signed short v70;
unsigned short v71;
unsigned int v72;
v68 = 2 - 0;
v69 = 2 - 7;
v70 = 0 + -4;
v71 = 1 - 6;
v72 = v1 (v68, v69, v70, v71);
history[history_index++] = (int)v72;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
