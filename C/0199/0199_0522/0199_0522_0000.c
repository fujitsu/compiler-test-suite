#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned char, signed char, unsigned short);
static signed char (*v2) (unsigned char, signed char, unsigned short) = v1;
signed int v3 (unsigned int, signed int, unsigned short);
signed int (*v4) (unsigned int, signed int, unsigned short) = v3;
extern signed int v5 (signed int, unsigned int);
extern signed int (*v6) (signed int, unsigned int);
extern unsigned int v7 (signed short, signed char, unsigned char);
extern unsigned int (*v8) (signed short, signed char, unsigned char);
void v9 (void);
void (*v10) (void) = v9;
unsigned short v11 (unsigned short, signed char, unsigned char, unsigned short);
unsigned short (*v12) (unsigned short, signed char, unsigned char, unsigned short) = v11;
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
signed int v15 (unsigned short, signed short, signed char);
signed int (*v16) (unsigned short, signed short, signed char) = v15;
extern signed char v19 (unsigned short, unsigned int);
extern signed char (*v20) (unsigned short, unsigned int);
extern signed short v21 (unsigned short, unsigned char);
extern signed short (*v22) (unsigned short, unsigned char);
signed short v23 (signed int);
signed short (*v24) (signed int) = v23;
void v25 (unsigned char, unsigned short, unsigned short, signed char);
void (*v26) (unsigned char, unsigned short, unsigned short, signed char) = v25;
extern void v27 (signed short, signed char, signed char, signed int);
extern void (*v28) (signed short, signed char, signed char, signed int);
extern unsigned int v29 (unsigned short, signed char, unsigned short);
extern unsigned int (*v30) (unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
unsigned int v32 = 0U;
unsigned char v31 = 4;

void v25 (unsigned char v34, unsigned short v35, unsigned short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 0;
unsigned int v39 = 0U;
signed int v38 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -3;
unsigned char v43 = 3;
unsigned short v42 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned short v45, signed short v46, signed char v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = -2;
signed char v49 = -1;
signed int v48 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v51, signed char v52, unsigned char v53, unsigned short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = -1;
unsigned short v56 = 3;
signed char v55 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
signed char v60 = 1;
signed char v59 = 1;
unsigned short v58 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v61, signed int v62, unsigned short v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = 0;
signed short v65 = 3;
unsigned int v64 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (unsigned char v67, signed char v68, unsigned short v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 6;
unsigned int v71 = 5U;
signed short v70 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v73;
signed char v74;
unsigned char v75;
unsigned int v76;
v73 = 1 + -1;
v74 = v68 - -2;
v75 = v72 + v67;
v76 = v7 (v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 14: 
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
unsigned char v79;
signed char v80;
unsigned short v81;
signed char v82;
v79 = v33 + 5;
v80 = 3 - 3;
v81 = 5 - 3;
v82 = v1 (v79, v80, v81);
history[history_index++] = (int)v82;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
