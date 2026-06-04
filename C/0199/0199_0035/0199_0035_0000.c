#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned char, unsigned char, unsigned int);
extern signed int (*v2) (unsigned char, unsigned char, unsigned char, unsigned int);
extern unsigned short v3 (unsigned char, signed short, unsigned char);
extern unsigned short (*v4) (unsigned char, signed short, unsigned char);
signed int v5 (signed short);
signed int (*v6) (signed short) = v5;
signed short v7 (signed int, signed int, signed short, unsigned short);
signed short (*v8) (signed int, signed int, signed short, unsigned short) = v7;
signed short v9 (unsigned int, signed char);
signed short (*v10) (unsigned int, signed char) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
signed char v13 (signed int);
signed char (*v14) (signed int) = v13;
signed int v15 (signed char, unsigned short, unsigned short, unsigned int);
signed int (*v16) (signed char, unsigned short, unsigned short, unsigned int) = v15;
extern signed int v17 (unsigned char, signed int, signed char);
extern signed int (*v18) (unsigned char, signed int, signed char);
extern void v19 (unsigned int, signed int, signed int);
extern void (*v20) (unsigned int, signed int, signed int);
extern unsigned char v21 (signed int, unsigned short, signed char);
extern unsigned char (*v22) (signed int, unsigned short, signed char);
extern signed short v23 (unsigned int, signed char, unsigned short);
extern signed short (*v24) (unsigned int, signed char, unsigned short);
extern void v25 (unsigned char, signed short, unsigned char);
extern void (*v26) (unsigned char, signed short, unsigned char);
unsigned char v27 (signed short, unsigned char, signed short);
unsigned char (*v28) (signed short, unsigned char, signed short) = v27;
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
signed char v32 = -4;
signed int v31 = -1;

unsigned char v27 (signed short v34, unsigned char v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 2;
unsigned short v38 = 2;
unsigned short v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed char v40, unsigned short v41, unsigned short v42, unsigned int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 1;
unsigned int v45 = 6U;
signed short v44 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed int v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = -2;
unsigned char v49 = 3;
signed short v48 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned int v51, signed char v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = 1;
unsigned char v54 = 4;
unsigned short v53 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v56, signed int v57, signed short v58, unsigned short v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 0;
unsigned short v61 = 2;
unsigned short v60 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v63;
signed int v64;
signed int v65;
v63 = 6U + 7U;
v64 = v56 + v57;
v65 = v56 - -3;
v19 (v63, v64, v65);
}
break;
case 3: 
{
unsigned int v66;
signed char v67;
unsigned short v68;
signed short v69;
v66 = 6U - 5U;
v67 = 1 + -3;
v68 = v61 + 6;
v69 = v23 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 5: 
{
unsigned int v70;
signed char v71;
unsigned short v72;
signed short v73;
v70 = 0U + 0U;
v71 = -2 - 0;
v72 = v60 - 0;
v73 = v23 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 7: 
return -4;
default: abort ();
}
}
}
}

signed int v5 (signed short v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 7U;
signed int v76 = -2;
unsigned int v75 = 2U;
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
unsigned char v80;
unsigned char v81;
unsigned char v82;
unsigned int v83;
signed int v84;
v80 = 0 - 0;
v81 = 5 - 0;
v82 = 2 + 0;
v83 = 1U + 3U;
v84 = v1 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
