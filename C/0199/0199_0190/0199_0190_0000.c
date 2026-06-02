#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed char, signed int);
static signed short (*v2) (signed char, signed int) = v1;
signed int v3 (signed int);
signed int (*v4) (signed int) = v3;
static signed int v5 (signed int);
static signed int (*v6) (signed int) = v5;
extern signed char v7 (signed char, unsigned int, signed int);
extern signed char (*v8) (signed char, unsigned int, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
void v11 (unsigned char, unsigned short, signed short, unsigned char);
void (*v12) (unsigned char, unsigned short, signed short, unsigned char) = v11;
signed short v13 (unsigned short, unsigned char, signed char);
signed short (*v14) (unsigned short, unsigned char, signed char) = v13;
extern void v15 (signed int, signed int, signed int);
extern void (*v16) (signed int, signed int, signed int);
unsigned short v17 (signed char, signed char, signed short, signed short);
unsigned short (*v18) (signed char, signed char, signed short, signed short) = v17;
extern unsigned int v19 (signed int, signed short, unsigned short, signed int);
extern unsigned int (*v20) (signed int, signed short, unsigned short, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (signed int, signed int, unsigned short);
extern signed int (*v24) (signed int, signed int, unsigned short);
void v25 (signed int, unsigned char, signed short, unsigned int);
void (*v26) (signed int, unsigned char, signed short, unsigned int) = v25;
extern signed char v27 (unsigned int, signed short, signed int, signed short);
extern signed char (*v28) (unsigned int, signed short, signed int, signed short);
extern unsigned short v29 (signed char, signed int, unsigned short);
extern unsigned short (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned int v32 = 0U;
signed char v31 = 1;

void v25 (signed int v34, unsigned char v35, signed short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 0;
signed char v39 = -3;
signed short v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed char v41, signed char v42, signed short v43, signed short v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 5U;
signed char v46 = -2;
signed short v45 = -3;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v48;
signed short v49;
signed int v50;
signed short v51;
signed char v52;
v48 = 6U + v47;
v49 = v45 - 2;
v50 = -1 + -2;
v51 = v43 - v43;
v52 = v27 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

signed short v13 (unsigned short v53, unsigned char v54, signed char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 7;
signed short v57 = 0;
unsigned int v56 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned char v59, unsigned short v60, signed short v61, unsigned char v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 5U;
signed short v64 = 2;
unsigned char v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v5 (signed int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 1;
signed int v68 = -4;
unsigned short v67 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed char v70;
signed int v71;
unsigned short v72;
unsigned short v73;
v70 = 2 - -3;
v71 = v68 - -4;
v72 = 0 + 0;
v73 = v29 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 3: 
{
signed char v74;
signed int v75;
unsigned short v76;
unsigned short v77;
v74 = -2 + -3;
v75 = -2 + v68;
v76 = 1 + v67;
v77 = v29 (v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 15: 
return v68;
default: abort ();
}
}
}
}

signed int v3 (signed int v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = 2;
unsigned short v80 = 0;
unsigned short v79 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (signed char v82, signed int v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = 1;
signed int v85 = -4;
signed int v84 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v87;
signed int v88;
v87 = v83 + v84;
v88 = v5 (v87);
history[history_index++] = (int)v88;
}
break;
case 16: 
return 0;
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
signed char v91;
signed int v92;
signed short v93;
v91 = 3 - v31;
v92 = 0 - -2;
v93 = v1 (v91, v92);
history[history_index++] = (int)v93;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
