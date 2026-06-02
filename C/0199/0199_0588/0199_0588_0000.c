#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed short, unsigned int, signed char);
static unsigned char (*v2) (signed short, unsigned int, signed char) = v1;
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern void v5 (signed int, unsigned int, signed char);
extern void (*v6) (signed int, unsigned int, signed char);
extern unsigned short v7 (unsigned char);
extern unsigned short (*v8) (unsigned char);
extern unsigned int v9 (signed int, unsigned int, unsigned char);
extern unsigned int (*v10) (signed int, unsigned int, unsigned char);
extern signed short v11 (unsigned int, unsigned short, unsigned short);
extern signed short (*v12) (unsigned int, unsigned short, unsigned short);
extern unsigned short v13 (unsigned short, unsigned int);
extern unsigned short (*v14) (unsigned short, unsigned int);
signed short v15 (unsigned int, signed char, signed char);
signed short (*v16) (unsigned int, signed char, signed char) = v15;
signed short v17 (signed char, signed int, unsigned int, unsigned int);
signed short (*v18) (signed char, signed int, unsigned int, unsigned int) = v17;
unsigned int v19 (unsigned char);
unsigned int (*v20) (unsigned char) = v19;
extern signed int v21 (signed int, unsigned int, signed char);
extern signed int (*v22) (signed int, unsigned int, signed char);
extern unsigned char v23 (unsigned char);
extern unsigned char (*v24) (unsigned char);
extern signed char v25 (unsigned char, signed char, unsigned int);
extern signed char (*v26) (unsigned char, signed char, unsigned int);
extern signed int v27 (signed char, signed char, unsigned short, signed short);
extern signed int (*v28) (signed char, signed char, unsigned short, signed short);
extern unsigned short v29 (unsigned char, signed int, signed char);
extern unsigned short (*v30) (unsigned char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned char v32 = 0;
unsigned short v31 = 1;

unsigned int v19 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 0;
signed int v36 = -1;
unsigned int v35 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed char v38, signed int v39, unsigned int v40, unsigned int v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 3;
unsigned short v43 = 1;
unsigned int v42 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v45, signed char v46, signed char v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 3U;
unsigned char v49 = 2;
signed int v48 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (signed short v51, unsigned int v52, signed char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 4U;
signed char v55 = -3;
signed short v54 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v57;
unsigned int v58;
unsigned char v59;
unsigned int v60;
v57 = 0 - 0;
v58 = v52 - 6U;
v59 = 1 - 1;
v60 = v9 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 2: 
{
unsigned char v61;
unsigned short v62;
v61 = 7 + 4;
v62 = v7 (v61);
history[history_index++] = (int)v62;
}
break;
case 8: 
{
unsigned int v63;
unsigned short v64;
unsigned short v65;
signed short v66;
v63 = v56 - v52;
v64 = 4 + 6;
v65 = 5 - 5;
v66 = v11 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 10: 
{
unsigned char v67;
unsigned short v68;
v67 = 0 + 3;
v68 = v7 (v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return 6;
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
signed short v71;
unsigned int v72;
signed char v73;
unsigned char v74;
v71 = 3 + -1;
v72 = 6U + 6U;
v73 = 2 + 0;
v74 = v1 (v71, v72, v73);
history[history_index++] = (int)v74;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
