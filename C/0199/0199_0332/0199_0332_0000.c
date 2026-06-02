#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed short, signed char, unsigned char, unsigned short);
static signed int (*v2) (signed short, signed char, unsigned char, unsigned short) = v1;
extern unsigned short v3 (signed char, signed short);
extern unsigned short (*v4) (signed char, signed short);
static unsigned short v5 (signed int, signed char);
static unsigned short (*v6) (signed int, signed char) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
signed short v9 (unsigned char);
signed short (*v10) (unsigned char) = v9;
extern unsigned char v11 (signed char, signed char, unsigned short, unsigned char);
extern unsigned char (*v12) (signed char, signed char, unsigned short, unsigned char);
signed char v13 (signed short, unsigned short, unsigned int);
signed char (*v14) (signed short, unsigned short, unsigned int) = v13;
signed char v15 (signed short, signed char, signed short, unsigned int);
signed char (*v16) (signed short, signed char, signed short, unsigned int) = v15;
extern void v17 (signed char, unsigned int, signed short);
extern void (*v18) (signed char, unsigned int, signed short);
void v19 (signed int, signed int, signed char, unsigned int);
void (*v20) (signed int, signed int, signed char, unsigned int) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern unsigned short v25 (signed char, signed int, unsigned char);
extern unsigned short (*v26) (signed char, signed int, unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
void v29 (unsigned int, unsigned short);
void (*v30) (unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
unsigned short v32 = 7;
unsigned char v31 = 1;

void v29 (unsigned int v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -1;
unsigned char v37 = 6;
unsigned char v36 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed int v39, signed int v40, signed char v41, unsigned int v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = 0;
signed short v44 = -4;
unsigned int v43 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed short v46, signed char v47, signed short v48, unsigned int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 6;
signed int v51 = -4;
unsigned int v50 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed short v53, unsigned short v54, unsigned int v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = 1;
signed char v57 = 1;
unsigned int v56 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 2;
signed char v61 = -4;
unsigned short v60 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v5 (signed int v63, signed char v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 7;
unsigned short v66 = 5;
unsigned char v65 = 7;
trace++;
switch (trace)
{
case 3: 
{
signed char v68;
signed char v69;
unsigned short v70;
unsigned char v71;
unsigned char v72;
v68 = 0 - v64;
v69 = -3 - v64;
v70 = v67 + v66;
v71 = 7 + 5;
v72 = v11 (v68, v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 5: 
return v67;
default: abort ();
}
}
}
}

static signed int v1 (signed short v73, signed char v74, unsigned char v75, unsigned short v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 6;
unsigned short v78 = 0;
unsigned char v77 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v80;
unsigned int v81;
signed short v82;
v80 = v74 + -1;
v81 = 7U + 4U;
v82 = -3 - v73;
v17 (v80, v81, v82);
}
break;
case 2: 
{
signed int v83;
signed char v84;
unsigned short v85;
v83 = -3 - 3;
v84 = v74 - v74;
v85 = v5 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 6: 
{
signed char v86;
v86 = v27 ();
history[history_index++] = (int)v86;
}
break;
case 10: 
{
signed char v87;
unsigned int v88;
signed short v89;
v87 = v74 - v74;
v88 = 2U + 0U;
v89 = -2 + -4;
v17 (v87, v88, v89);
}
break;
case 12: 
return -4;
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
signed short v92;
signed char v93;
unsigned char v94;
unsigned short v95;
signed int v96;
v92 = 2 + 0;
v93 = -1 + -2;
v94 = 1 + 0;
v95 = v32 + v32;
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
