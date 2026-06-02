#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, signed short, unsigned char, signed int);
extern signed int (*v2) (signed short, signed short, unsigned char, signed int);
unsigned int v3 (unsigned int, unsigned int, unsigned char, unsigned int);
unsigned int (*v4) (unsigned int, unsigned int, unsigned char, unsigned int) = v3;
extern unsigned char v5 (unsigned short, unsigned int, signed short, unsigned int);
extern unsigned char (*v6) (unsigned short, unsigned int, signed short, unsigned int);
signed char v7 (unsigned short, signed int, signed char);
signed char (*v8) (unsigned short, signed int, signed char) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned int v11 (unsigned int, unsigned int);
unsigned int (*v12) (unsigned int, unsigned int) = v11;
extern unsigned char v13 (signed short, signed int, unsigned char, unsigned int);
extern unsigned char (*v14) (signed short, signed int, unsigned char, unsigned int);
extern unsigned int v15 (unsigned short, unsigned int, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned short, unsigned int, unsigned char, unsigned int);
signed int v17 (signed short, signed int, signed char);
signed int (*v18) (signed short, signed int, signed char) = v17;
signed int v19 (unsigned char, unsigned char, signed short, signed int);
signed int (*v20) (unsigned char, unsigned char, signed short, signed int) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (unsigned int, signed int);
extern unsigned int (*v24) (unsigned int, signed int);
extern unsigned int v25 (unsigned char, signed int, unsigned short, signed short);
extern unsigned int (*v26) (unsigned char, signed int, unsigned short, signed short);
signed short v27 (unsigned short);
signed short (*v28) (unsigned short) = v27;
unsigned int v29 (signed char, signed int, signed short);
unsigned int (*v30) (signed char, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned char v32 = 7;
unsigned int v31 = 6U;

unsigned int v29 (signed char v34, signed int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 2U;
unsigned int v38 = 6U;
signed char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (unsigned short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = 3;
unsigned short v42 = 7;
unsigned int v41 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned char v44, unsigned char v45, signed short v46, signed int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 5U;
signed int v49 = 0;
unsigned int v48 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed short v51, signed int v52, signed char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = 1;
unsigned char v55 = 3;
signed int v54 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v57, unsigned int v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 6;
unsigned short v60 = 6;
signed int v59 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v62;
unsigned int v63;
unsigned char v64;
unsigned int v65;
unsigned int v66;
v62 = v61 + 3;
v63 = v58 - v58;
v64 = 7 - 5;
v65 = 4U + v57;
v66 = v15 (v62, v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 13: 
return v57;
default: abort ();
}
}
}
}

signed char v7 (unsigned short v67, signed int v68, signed char v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 5;
unsigned short v71 = 3;
unsigned char v70 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v73, unsigned int v74, unsigned char v75, unsigned int v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 2;
signed char v78 = 0;
unsigned int v77 = 3U;
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
signed short v82;
signed short v83;
unsigned char v84;
signed int v85;
signed int v86;
v82 = v33 - -3;
v83 = v33 + -1;
v84 = v32 - 3;
v85 = 3 + -3;
v86 = v1 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
