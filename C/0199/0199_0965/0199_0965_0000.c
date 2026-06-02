#include <stdio.h>
#include <stdlib.h>
static signed int v1 (unsigned int, unsigned short, unsigned short);
static signed int (*v2) (unsigned int, unsigned short, unsigned short) = v1;
unsigned char v3 (unsigned int, signed char, signed short);
unsigned char (*v4) (unsigned int, signed char, signed short) = v3;
extern signed short v5 (signed int, signed short, unsigned char);
extern signed short (*v6) (signed int, signed short, unsigned char);
signed short v7 (unsigned char, unsigned char, signed char);
signed short (*v8) (unsigned char, unsigned char, signed char) = v7;
extern signed char v9 (signed int, signed char, unsigned short, signed char);
extern signed char (*v10) (signed int, signed char, unsigned short, signed char);
static signed short v11 (unsigned short);
static signed short (*v12) (unsigned short) = v11;
extern unsigned int v13 (unsigned int, signed char, signed short);
extern unsigned int (*v14) (unsigned int, signed char, signed short);
extern signed char v15 (signed int, unsigned char);
extern signed char (*v16) (signed int, unsigned char);
extern unsigned int v17 (unsigned char, unsigned char, signed short, signed short);
extern unsigned int (*v18) (unsigned char, unsigned char, signed short, signed short);
signed int v19 (unsigned int);
signed int (*v20) (unsigned int) = v19;
extern unsigned int v21 (signed short);
extern unsigned int (*v22) (signed short);
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern void v25 (unsigned short, unsigned short);
extern void (*v26) (unsigned short, unsigned short);
extern signed char v27 (signed char, unsigned char);
extern signed char (*v28) (signed char, unsigned char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed char v32 = 0;
signed int v31 = -3;

signed int v19 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 1;
signed char v36 = -2;
unsigned int v35 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v11 (unsigned short v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned int v41 = 1U;
signed short v40 = 1;
unsigned char v39 = 3;
trace++;
switch (trace)
{
case 11: 
return -1;
default: abort ();
}
}
}
}

signed short v7 (unsigned char v42, unsigned char v43, signed char v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned short v47 = 3;
unsigned int v46 = 5U;
unsigned short v45 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v48, signed char v49, signed short v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned char v53 = 5;
unsigned short v52 = 6;
unsigned short v51 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (unsigned int v54, unsigned short v55, unsigned short v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 2U;
signed char v58 = 1;
unsigned int v57 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed int v60;
unsigned char v61;
signed char v62;
v60 = -4 + -2;
v61 = 0 + 2;
v62 = v15 (v60, v61);
history[history_index++] = (int)v62;
}
break;
case 10: 
{
unsigned short v63;
signed short v64;
v63 = v56 + v56;
v64 = v11 (v63);
history[history_index++] = (int)v64;
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
unsigned int v67;
unsigned short v68;
unsigned short v69;
signed int v70;
v67 = 3U + 5U;
v68 = 1 + 5;
v69 = 1 - 3;
v70 = v1 (v67, v68, v69);
history[history_index++] = (int)v70;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
