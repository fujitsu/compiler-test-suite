#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned int, unsigned char, signed char, signed int);
static signed char (*v2) (unsigned int, unsigned char, signed char, signed int) = v1;
extern void v3 (unsigned int, signed char, signed short);
extern void (*v4) (unsigned int, signed char, signed short);
signed char v5 (signed char, unsigned short, signed short);
signed char (*v6) (signed char, unsigned short, signed short) = v5;
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern signed int v9 (unsigned int, signed short, signed int);
extern signed int (*v10) (unsigned int, signed short, signed int);
extern signed short v11 (signed char, unsigned char, signed short, signed char);
extern signed short (*v12) (signed char, unsigned char, signed short, signed char);
extern signed char v13 (unsigned int);
extern signed char (*v14) (unsigned int);
extern unsigned char v15 (unsigned short, signed char, unsigned short);
extern unsigned char (*v16) (unsigned short, signed char, unsigned short);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
signed char v19 (unsigned short, signed int, unsigned char, unsigned char);
signed char (*v20) (unsigned short, signed int, unsigned char, unsigned char) = v19;
void v21 (unsigned int, signed int);
void (*v22) (unsigned int, signed int) = v21;
extern unsigned char v23 (unsigned char, signed char, unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed char, unsigned char, signed int);
extern unsigned short v25 (signed int, signed short);
extern unsigned short (*v26) (signed int, signed short);
extern unsigned int v27 (signed int, unsigned int);
extern unsigned int (*v28) (signed int, unsigned int);
signed char v29 (signed int, signed int, signed int, unsigned int);
signed char (*v30) (signed int, signed int, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
signed short v32 = 3;
signed char v31 = 1;

signed char v29 (signed int v34, signed int v35, signed int v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 2;
signed short v39 = -2;
unsigned int v38 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned int v41, signed int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = 0;
signed char v44 = 0;
signed char v43 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned short v46, signed int v47, unsigned char v48, unsigned char v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = 2;
unsigned short v51 = 0;
unsigned char v50 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned short v55 = 7;
signed int v54 = -1;
unsigned int v53 = 3U;
trace++;
switch (trace)
{
case 2: 
{
signed int v56;
signed short v57;
unsigned short v58;
v56 = -4 + 2;
v57 = 2 - 3;
v58 = v25 (v56, v57);
history[history_index++] = (int)v58;
}
break;
case 4: 
{
signed int v59;
signed short v60;
unsigned short v61;
v59 = -1 + v54;
v60 = -2 + -2;
v61 = v25 (v59, v60);
history[history_index++] = (int)v61;
}
break;
case 6: 
return 0;
case 8: 
{
signed int v62;
signed short v63;
unsigned short v64;
v62 = 0 + v54;
v63 = 1 - 0;
v64 = v25 (v62, v63);
history[history_index++] = (int)v64;
}
break;
case 10: 
{
signed int v65;
signed short v66;
unsigned short v67;
v65 = 3 - 1;
v66 = 0 - -1;
v67 = v25 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}

signed char v5 (signed char v68, unsigned short v69, signed short v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = 1;
unsigned char v72 = 3;
signed int v71 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (unsigned int v74, unsigned char v75, signed char v76, signed int v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = -2;
unsigned char v79 = 7;
unsigned int v78 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed char v81;
unsigned char v82;
signed short v83;
signed char v84;
signed short v85;
v81 = -4 + -4;
v82 = 1 + 2;
v83 = -3 - 3;
v84 = v76 - v76;
v85 = v11 (v81, v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 14: 
return v76;
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
unsigned int v88;
unsigned char v89;
signed char v90;
signed int v91;
signed char v92;
v88 = 6U - 0U;
v89 = v33 + v33;
v90 = v31 - v31;
v91 = 2 - -3;
v92 = v1 (v88, v89, v90, v91);
history[history_index++] = (int)v92;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
