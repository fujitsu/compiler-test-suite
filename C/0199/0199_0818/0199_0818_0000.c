#include <stdio.h>
#include <stdlib.h>
static void v1 (signed char);
static void (*v2) (signed char) = v1;
extern signed short v3 (unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned short);
void v5 (signed short, signed short);
void (*v6) (signed short, signed short) = v5;
signed char v7 (unsigned char, signed int, signed char, unsigned int);
signed char (*v8) (unsigned char, signed int, signed char, unsigned int) = v7;
signed short v9 (unsigned short, unsigned char, signed short);
signed short (*v10) (unsigned short, unsigned char, signed short) = v9;
signed char v11 (signed char, unsigned char);
signed char (*v12) (signed char, unsigned char) = v11;
extern unsigned char v13 (signed char, signed char, unsigned char);
extern unsigned char (*v14) (signed char, signed char, unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern void v17 (unsigned int, signed int);
extern void (*v18) (unsigned int, signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
static unsigned short v21 (signed short, unsigned short, signed short, unsigned int);
static unsigned short (*v22) (signed short, unsigned short, signed short, unsigned int) = v21;
extern unsigned short v23 (signed char, signed char);
extern unsigned short (*v24) (signed char, signed char);
unsigned int v25 (unsigned char, signed int, signed char);
unsigned int (*v26) (unsigned char, signed int, signed char) = v25;
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed int v32 = 0;
signed char v31 = 1;

unsigned int v25 (unsigned char v34, signed int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 1U;
unsigned int v38 = 6U;
signed short v37 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v21 (signed short v40, unsigned short v41, signed short v42, unsigned int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = 2;
signed short v45 = -3;
unsigned short v44 = 3;
trace++;
switch (trace)
{
case 3: 
{
signed int v47;
v47 = v19 ();
history[history_index++] = (int)v47;
}
break;
case 5: 
{
signed int v48;
v48 = v19 ();
history[history_index++] = (int)v48;
}
break;
case 7: 
return v44;
case 9: 
return v44;
case 11: 
return v41;
default: abort ();
}
}
}
}

signed char v11 (signed char v49, unsigned char v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = -1;
signed char v52 = -4;
unsigned short v51 = 6;
trace++;
switch (trace)
{
case 2: 
{
signed short v54;
unsigned short v55;
signed short v56;
unsigned int v57;
unsigned short v58;
v54 = -1 + -1;
v55 = 2 - 4;
v56 = 0 - 1;
v57 = 3U + 1U;
v58 = v21 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 8: 
{
signed short v59;
unsigned short v60;
signed short v61;
unsigned int v62;
unsigned short v63;
v59 = -2 + 3;
v60 = 3 + v51;
v61 = -4 - 0;
v62 = 0U + 7U;
v63 = v21 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 10: 
{
signed short v64;
unsigned short v65;
signed short v66;
unsigned int v67;
unsigned short v68;
v64 = 3 - 1;
v65 = v51 - v51;
v66 = 3 - 1;
v67 = 3U + 7U;
v68 = v21 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return v49;
default: abort ();
}
}
}
}

signed short v9 (unsigned short v69, unsigned char v70, signed short v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 7;
unsigned char v73 = 6;
unsigned short v72 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v75, signed int v76, signed char v77, unsigned int v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 4U;
unsigned int v80 = 1U;
signed int v79 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v82, signed short v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = 3;
signed short v85 = 1;
unsigned char v84 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (signed char v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = -3;
unsigned char v89 = 0;
unsigned short v88 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v91;
v91 = v15 ();
history[history_index++] = (int)v91;
}
break;
case 14: 
return;
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
signed char v94;
v94 = 2 + v31;
v1 (v94);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
