#include <stdio.h>
#include <stdlib.h>
static signed int v1 (unsigned short, unsigned char, unsigned short, signed short);
static signed int (*v2) (unsigned short, unsigned char, unsigned short, signed short) = v1;
static void v3 (unsigned int, signed char, signed short, unsigned char);
static void (*v4) (unsigned int, signed char, signed short, unsigned char) = v3;
extern signed char v5 (unsigned char, unsigned int);
extern signed char (*v6) (unsigned char, unsigned int);
extern signed int v7 (signed int, signed int, signed int, signed int);
extern signed int (*v8) (signed int, signed int, signed int, signed int);
unsigned short v9 (signed char, unsigned char, unsigned char);
unsigned short (*v10) (signed char, unsigned char, unsigned char) = v9;
signed char v11 (unsigned short);
signed char (*v12) (unsigned short) = v11;
unsigned int v13 (signed char, unsigned char, unsigned short, signed short);
unsigned int (*v14) (signed char, unsigned char, unsigned short, signed short) = v13;
extern unsigned int v15 (signed short, unsigned char);
extern unsigned int (*v16) (signed short, unsigned char);
extern void v17 (signed int, unsigned int, signed int);
extern void (*v18) (signed int, unsigned int, signed int);
static signed short v19 (signed char, unsigned int, signed char, unsigned short);
static signed short (*v20) (signed char, unsigned int, signed char, unsigned short) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned char v27 (signed int, signed char, unsigned char, signed char);
unsigned char (*v28) (signed int, signed char, unsigned char, signed char) = v27;
extern unsigned int v29 (signed short, unsigned char, signed int);
extern unsigned int (*v30) (signed short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
unsigned int v32 = 5U;
signed short v31 = -2;

unsigned char v27 (signed int v34, signed char v35, unsigned char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 2;
signed char v39 = 0;
signed short v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v19 (signed char v41, unsigned int v42, signed char v43, unsigned short v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = 3;
signed int v46 = -1;
signed char v45 = -3;
trace++;
switch (trace)
{
case 6: 
return v47;
case 8: 
return v47;
default: abort ();
}
}
}
}

unsigned int v13 (signed char v48, unsigned char v49, unsigned short v50, signed short v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 0U;
signed int v53 = 2;
signed int v52 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -3;
unsigned int v57 = 1U;
unsigned char v56 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed char v59, unsigned char v60, unsigned char v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = -2;
unsigned int v63 = 3U;
signed int v62 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v3 (unsigned int v65, signed char v66, signed short v67, unsigned char v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 0;
unsigned short v70 = 6;
unsigned int v69 = 3U;
trace++;
switch (trace)
{
case 5: 
{
signed char v72;
unsigned int v73;
signed char v74;
unsigned short v75;
signed short v76;
v72 = 2 - v66;
v73 = 3U + v65;
v74 = v66 + v66;
v75 = v70 + v70;
v76 = v19 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 7: 
{
signed char v77;
unsigned int v78;
signed char v79;
unsigned short v80;
signed short v81;
v77 = v66 - 0;
v78 = 3U + 3U;
v79 = v66 + -2;
v80 = v70 + 1;
v81 = v19 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

static signed int v1 (unsigned short v82, unsigned char v83, unsigned short v84, signed short v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = -1;
signed int v87 = 3;
signed short v86 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v89;
unsigned int v90;
signed int v91;
v89 = 0 - -1;
v90 = 2U + 3U;
v91 = v87 - v87;
v17 (v89, v90, v91);
}
break;
case 2: 
{
signed int v92;
unsigned int v93;
signed int v94;
v92 = 3 - v87;
v93 = 0U + 6U;
v94 = v87 + v87;
v17 (v92, v93, v94);
}
break;
case 4: 
{
unsigned int v95;
signed char v96;
signed short v97;
unsigned char v98;
v95 = 4U - 2U;
v96 = -4 + 2;
v97 = 3 - -1;
v98 = v83 - 0;
v3 (v95, v96, v97, v98);
}
break;
case 10: 
{
unsigned int v99;
signed char v100;
signed short v101;
unsigned char v102;
v99 = 5U + 6U;
v100 = 2 + -2;
v101 = v85 + v86;
v102 = 3 + v83;
v3 (v99, v100, v101, v102);
}
break;
case 12: 
return v87;
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
unsigned short v105;
unsigned char v106;
unsigned short v107;
signed short v108;
signed int v109;
v105 = 5 + 1;
v106 = 7 - 4;
v107 = 2 - 6;
v108 = 2 - v33;
v109 = v1 (v105, v106, v107, v108);
history[history_index++] = (int)v109;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
