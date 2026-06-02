#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
unsigned char v3 (unsigned short, signed int);
unsigned char (*v4) (unsigned short, signed int) = v3;
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern unsigned short v7 (signed int, unsigned int, signed short);
extern unsigned short (*v8) (signed int, unsigned int, signed short);
extern unsigned short v9 (unsigned short, signed char, signed short);
extern unsigned short (*v10) (unsigned short, signed char, signed short);
extern signed short v11 (signed char);
extern signed short (*v12) (signed char);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern unsigned int v15 (signed int, signed int);
extern unsigned int (*v16) (signed int, signed int);
extern unsigned char v17 (unsigned short, signed short);
extern unsigned char (*v18) (unsigned short, signed short);
void v19 (signed short, unsigned short, unsigned char);
void (*v20) (signed short, unsigned short, unsigned char) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed char v23 (signed int, signed char, unsigned short, unsigned short);
extern signed char (*v24) (signed int, signed char, unsigned short, unsigned short);
void v25 (signed short, signed char, unsigned short, unsigned char);
void (*v26) (signed short, signed char, unsigned short, unsigned char) = v25;
unsigned int v27 (signed char, signed short, signed int);
unsigned int (*v28) (signed char, signed short, signed int) = v27;
signed short v29 (signed char, unsigned int);
signed short (*v30) (signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
signed int v32 = -2;
unsigned int v31 = 1U;

signed short v29 (signed char v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 2;
signed char v37 = -2;
signed char v36 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (signed char v39, signed short v40, signed int v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 7U;
unsigned char v43 = 7;
unsigned int v42 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (signed short v45, signed char v46, unsigned short v47, unsigned char v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = 2;
unsigned int v50 = 5U;
unsigned short v49 = 6;
trace++;
switch (trace)
{
case 1: 
{
signed short v52;
signed char v53;
unsigned short v54;
unsigned char v55;
v52 = 0 + v45;
v53 = 3 + v46;
v54 = v49 - v47;
v55 = v48 + 2;
v25 (v52, v53, v54, v55);
}
break;
case 2: 
return;
case 3: 
{
signed short v56;
signed char v57;
unsigned short v58;
unsigned char v59;
v56 = -4 - -2;
v57 = -2 - -4;
v58 = 6 - v47;
v59 = 1 - v48;
v25 (v56, v57, v58, v59);
}
break;
case 4: 
{
signed short v60;
signed char v61;
unsigned short v62;
unsigned char v63;
v60 = -2 + 1;
v61 = 3 + v46;
v62 = v49 + 2;
v63 = 0 + 0;
v25 (v60, v61, v62, v63);
}
break;
case 5: 
return;
case 6: 
{
signed short v64;
signed char v65;
unsigned short v66;
unsigned char v67;
v64 = 2 + v45;
v65 = v46 - 0;
v66 = v47 - 4;
v67 = v48 - v48;
v25 (v64, v65, v66, v67);
}
break;
case 7: 
{
signed short v68;
signed char v69;
unsigned short v70;
unsigned char v71;
v68 = 3 + 3;
v69 = 2 - v46;
v70 = 7 + v47;
v71 = v48 + 4;
v25 (v68, v69, v70, v71);
}
break;
case 8: 
return;
case 9: 
{
signed short v72;
signed char v73;
unsigned short v74;
unsigned char v75;
v72 = 0 + v45;
v73 = 2 - v46;
v74 = 2 - v47;
v75 = 2 + 1;
v25 (v72, v73, v74, v75);
}
break;
case 10: 
return;
case 11: 
return;
case 12: 
return;
case 13: 
return;
default: abort ();
}
}
}
}

void v19 (signed short v76, unsigned short v77, unsigned char v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned char v81 = 0;
unsigned short v80 = 4;
signed char v79 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
signed char v84 = -1;
unsigned char v83 = 7;
signed int v82 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned short v85, signed int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = -4;
unsigned short v88 = 3;
unsigned int v87 = 2U;
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
signed char v92;
v92 = v1 ();
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
