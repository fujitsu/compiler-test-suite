#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, signed short, signed int, unsigned char);
extern signed short (*v2) (signed char, signed short, signed int, unsigned char);
unsigned char v3 (unsigned char, unsigned char);
unsigned char (*v4) (unsigned char, unsigned char) = v3;
extern signed int v5 (signed char, unsigned short);
extern signed int (*v6) (signed char, unsigned short);
static unsigned int v7 (unsigned short, signed char, signed int, signed short);
static unsigned int (*v8) (unsigned short, signed char, signed int, signed short) = v7;
extern signed char v9 (signed short, signed short, signed short, signed short);
extern signed char (*v10) (signed short, signed short, signed short, signed short);
signed char v11 (unsigned char, signed short, unsigned int);
signed char (*v12) (unsigned char, signed short, unsigned int) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (unsigned short, unsigned int, signed int, signed short);
extern unsigned int (*v16) (unsigned short, unsigned int, signed int, signed short);
unsigned char v17 (unsigned char, signed short, signed short, unsigned char);
unsigned char (*v18) (unsigned char, signed short, signed short, unsigned char) = v17;
signed int v19 (void);
signed int (*v20) (void) = v19;
extern void v21 (unsigned int, signed int, unsigned char, signed char);
extern void (*v22) (unsigned int, signed int, unsigned char, signed char);
extern signed int v23 (unsigned short, signed short, unsigned short);
extern signed int (*v24) (unsigned short, signed short, unsigned short);
extern unsigned char v25 (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned char (*v26) (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned short v27 (signed char, unsigned short);
extern unsigned short (*v28) (signed char, unsigned short);
static unsigned int v29 (signed int, unsigned char, unsigned char, signed short);
static unsigned int (*v30) (signed int, unsigned char, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned short v32 = 4;
unsigned int v31 = 1U;

static unsigned int v29 (signed int v34, unsigned char v35, unsigned char v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -2;
unsigned char v39 = 5;
unsigned int v38 = 6U;
trace++;
switch (trace)
{
case 10: 
return v38;
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
unsigned short v43 = 5;
unsigned char v42 = 7;
unsigned char v41 = 6;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v44;
signed char v45;
signed int v46;
signed short v47;
unsigned int v48;
v44 = 3 - v43;
v45 = -2 + 2;
v46 = -4 + 0;
v47 = 2 + -1;
v48 = v7 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 7: 
{
unsigned short v49;
signed char v50;
signed int v51;
signed short v52;
unsigned int v53;
v49 = 6 + 6;
v50 = -4 - -3;
v51 = 0 + -4;
v52 = 1 - -3;
v53 = v7 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 9: 
{
signed int v54;
unsigned char v55;
unsigned char v56;
signed short v57;
unsigned int v58;
v54 = 0 - -2;
v55 = v42 + v42;
v56 = v41 + 1;
v57 = 0 + -2;
v58 = v29 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned char v17 (unsigned char v59, signed short v60, signed short v61, unsigned char v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 2;
signed char v64 = -4;
signed int v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned char v66, signed short v67, unsigned int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = -2;
signed int v70 = 3;
signed short v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v7 (unsigned short v72, signed char v73, signed int v74, signed short v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 1U;
signed int v77 = -1;
unsigned short v76 = 6;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v79;
unsigned int v80;
signed int v81;
signed short v82;
unsigned int v83;
v79 = v76 - v76;
v80 = 3U - 1U;
v81 = v74 - v77;
v82 = -3 + v75;
v83 = v15 (v79, v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 4: 
{
unsigned short v84;
signed short v85;
unsigned short v86;
signed int v87;
v84 = v76 - v72;
v85 = v75 - 3;
v86 = v72 - v72;
v87 = v23 (v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 6: 
return v78;
case 8: 
return 4U;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v88, unsigned char v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = -2;
signed short v91 = 1;
unsigned char v90 = 6;
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
signed char v95;
signed short v96;
signed int v97;
unsigned char v98;
signed short v99;
v95 = 1 + -4;
v96 = -3 - -3;
v97 = -3 - -3;
v98 = 3 - 2;
v99 = v1 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
