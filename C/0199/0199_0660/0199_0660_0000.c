#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (unsigned int, unsigned char, signed short);
static unsigned char (*v2) (unsigned int, unsigned char, signed short) = v1;
unsigned char v3 (unsigned char);
unsigned char (*v4) (unsigned char) = v3;
extern signed char v5 (unsigned int, unsigned int);
extern signed char (*v6) (unsigned int, unsigned int);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
static signed char v11 (signed char, signed int, unsigned short);
static signed char (*v12) (signed char, signed int, unsigned short) = v11;
extern signed short v13 (unsigned int, signed char, signed int);
extern signed short (*v14) (unsigned int, signed char, signed int);
extern unsigned int v15 (unsigned int, unsigned int, unsigned int);
extern unsigned int (*v16) (unsigned int, unsigned int, unsigned int);
extern signed char v17 (unsigned char, unsigned short);
extern signed char (*v18) (unsigned char, unsigned short);
signed char v19 (signed int, signed int);
signed char (*v20) (signed int, signed int) = v19;
extern unsigned int v21 (unsigned char, unsigned int, unsigned short);
extern unsigned int (*v22) (unsigned char, unsigned int, unsigned short);
extern signed int v23 (unsigned int, unsigned char);
extern signed int (*v24) (unsigned int, unsigned char);
extern unsigned char v25 (signed char, unsigned char, signed char, unsigned short);
extern unsigned char (*v26) (signed char, unsigned char, signed char, unsigned short);
extern unsigned char v27 (signed int, signed char, signed char, unsigned short);
extern unsigned char (*v28) (signed int, signed char, signed char, unsigned short);
signed int v29 (unsigned int);
signed int (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned int v32 = 5U;
signed char v31 = -3;

signed int v29 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 0U;
signed int v36 = -1;
unsigned char v35 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v38, signed int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 7U;
signed int v41 = -1;
unsigned int v40 = 4U;
trace++;
switch (trace)
{
case 5: 
return -3;
default: abort ();
}
}
}
}

static signed char v11 (signed char v43, signed int v44, unsigned short v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 1U;
signed short v47 = 3;
unsigned char v46 = 0;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = -1;
signed short v51 = 1;
unsigned char v50 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (unsigned int v53, unsigned char v54, signed short v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 6U;
unsigned short v57 = 3;
unsigned int v56 = 6U;
trace++;
switch (trace)
{
case 0: 
{
signed char v59;
signed int v60;
unsigned short v61;
signed char v62;
v59 = 3 - 2;
v60 = -1 - 0;
v61 = v57 + 4;
v62 = v11 (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 2: 
{
unsigned int v63;
unsigned int v64;
unsigned int v65;
unsigned int v66;
v63 = v53 - v56;
v64 = v56 - v53;
v65 = 1U + v56;
v66 = v15 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 8: 
{
unsigned int v67;
unsigned char v68;
signed int v69;
v67 = v53 + v53;
v68 = 2 + v54;
v69 = v23 (v67, v68);
history[history_index++] = (int)v69;
}
break;
case 14: 
return v54;
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
unsigned int v72;
unsigned char v73;
signed short v74;
unsigned char v75;
v72 = v32 + 7U;
v73 = 4 - 3;
v74 = -1 - 3;
v75 = v1 (v72, v73, v74);
history[history_index++] = (int)v75;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
