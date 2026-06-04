#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed char, signed char, signed int, unsigned char);
static signed char (*v2) (signed char, signed char, signed int, unsigned char) = v1;
unsigned char v3 (signed short, signed int);
unsigned char (*v4) (signed short, signed int) = v3;
extern signed short v5 (unsigned char, unsigned char, signed char);
extern signed short (*v6) (unsigned char, unsigned char, signed char);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
static unsigned short v9 (signed int);
static unsigned short (*v10) (signed int) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
static signed int v13 (signed short, signed char, signed short, signed int);
static signed int (*v14) (signed short, signed char, signed short, signed int) = v13;
void v15 (signed short, signed char, unsigned int, signed int);
void (*v16) (signed short, signed char, unsigned int, signed int) = v15;
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
extern unsigned short v19 (signed short, signed short);
extern unsigned short (*v20) (signed short, signed short);
extern unsigned short v21 (signed int, unsigned short, signed char, unsigned int);
extern unsigned short (*v22) (signed int, unsigned short, signed char, unsigned int);
signed char v23 (signed short, unsigned short);
signed char (*v24) (signed short, unsigned short) = v23;
extern signed char v25 (unsigned char, signed int, signed short, unsigned int);
extern signed char (*v26) (unsigned char, signed int, signed short, unsigned int);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned short v32 = 4;
signed char v31 = -3;

signed char v23 (signed short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 0;
unsigned int v37 = 2U;
signed short v36 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed short v39, signed char v40, unsigned int v41, signed int v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = 2;
signed short v44 = 1;
signed int v43 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v13 (signed short v46, signed char v47, signed short v48, signed int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = 2;
signed int v51 = 0;
unsigned short v50 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v53;
signed int v54;
v53 = 6 + 0;
v54 = v27 (v53);
history[history_index++] = (int)v54;
}
break;
case 3: 
{
unsigned char v55;
signed int v56;
signed short v57;
unsigned int v58;
signed char v59;
v55 = 1 + 5;
v56 = v51 + v51;
v57 = v46 - v48;
v58 = 1U + 0U;
v59 = v25 (v55, v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 5: 
{
signed int v60;
unsigned short v61;
v60 = v51 - v49;
v61 = v9 (v60);
history[history_index++] = (int)v61;
}
break;
case 7: 
{
unsigned char v62;
signed int v63;
v62 = 7 + 3;
v63 = v27 (v62);
history[history_index++] = (int)v63;
}
break;
case 9: 
{
unsigned char v64;
signed int v65;
signed short v66;
unsigned int v67;
signed char v68;
v64 = 1 - 0;
v65 = v51 + -3;
v66 = v48 - v46;
v67 = 4U - 1U;
v68 = v25 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

static unsigned short v9 (signed int v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 4;
unsigned char v71 = 7;
signed short v70 = -2;
trace++;
switch (trace)
{
case 6: 
return v72;
default: abort ();
}
}
}
}

unsigned char v3 (signed short v73, signed int v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 3U;
signed int v76 = 1;
signed short v75 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (signed char v78, signed char v79, signed int v80, unsigned char v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = -1;
signed short v83 = 1;
unsigned short v82 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v85;
signed char v86;
signed short v87;
signed int v88;
signed int v89;
v85 = v83 + 0;
v86 = -1 - v79;
v87 = -4 + v84;
v88 = v80 + 0;
v89 = v13 (v85, v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 12: 
return v79;
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
signed char v92;
signed char v93;
signed int v94;
unsigned char v95;
signed char v96;
v92 = 1 + v31;
v93 = -1 - v31;
v94 = v33 - -2;
v95 = 2 + 7;
v96 = v1 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
