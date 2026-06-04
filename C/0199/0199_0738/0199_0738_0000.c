#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int, signed int, signed short, unsigned char);
extern void (*v2) (unsigned int, signed int, signed short, unsigned char);
void v3 (unsigned int);
void (*v4) (unsigned int) = v3;
unsigned short v5 (signed short, unsigned int, unsigned char, unsigned char);
unsigned short (*v6) (signed short, unsigned int, unsigned char, unsigned char) = v5;
extern signed char v7 (unsigned int, unsigned short, unsigned int, signed char);
extern signed char (*v8) (unsigned int, unsigned short, unsigned int, signed char);
unsigned int v9 (unsigned int, unsigned int);
unsigned int (*v10) (unsigned int, unsigned int) = v9;
extern unsigned short v11 (signed int);
extern unsigned short (*v12) (signed int);
signed short v13 (signed char);
signed short (*v14) (signed char) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned char v19 (unsigned int, signed short, unsigned int);
extern unsigned char (*v20) (unsigned int, signed short, unsigned int);
extern unsigned short v21 (unsigned int, signed int);
extern unsigned short (*v22) (unsigned int, signed int);
extern unsigned char v23 (unsigned short, unsigned char, signed short, signed int);
extern unsigned char (*v24) (unsigned short, unsigned char, signed short, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (unsigned char);
extern unsigned int (*v28) (unsigned char);
extern signed short v29 (signed char, unsigned short);
extern signed short (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
unsigned int v32 = 7U;
signed char v31 = -1;

signed short v13 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 7U;
unsigned short v36 = 3;
signed char v35 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned int v38, unsigned int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = -4;
unsigned char v41 = 4;
unsigned int v40 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v43, unsigned int v44, unsigned char v45, unsigned char v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 3;
signed char v48 = 2;
signed char v47 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed short v50;
unsigned int v51;
unsigned char v52;
unsigned char v53;
unsigned short v54;
v50 = v43 - 3;
v51 = v44 + v44;
v52 = v46 - v46;
v53 = v45 + 5;
v54 = v5 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 2: 
{
unsigned int v55;
signed int v56;
unsigned short v57;
v55 = v44 + v44;
v56 = 2 + 2;
v57 = v21 (v55, v56);
history[history_index++] = (int)v57;
}
break;
case 6: 
{
signed short v58;
unsigned int v59;
unsigned char v60;
unsigned char v61;
unsigned short v62;
v58 = -3 + v43;
v59 = v44 - 6U;
v60 = 4 - v46;
v61 = v46 - v49;
v62 = v5 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 7: 
{
signed short v63;
unsigned int v64;
unsigned char v65;
unsigned char v66;
unsigned short v67;
v63 = v43 - v43;
v64 = v44 + 3U;
v65 = v46 + v49;
v66 = 5 - 0;
v67 = v5 (v63, v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 8: 
{
signed char v68;
v68 = v15 ();
history[history_index++] = (int)v68;
}
break;
case 10: 
{
signed short v69;
unsigned int v70;
unsigned char v71;
unsigned char v72;
unsigned short v73;
v69 = -1 + v43;
v70 = 3U + 4U;
v71 = v49 + v46;
v72 = v45 - v46;
v73 = v5 (v69, v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 11: 
return 7;
case 12: 
return 5;
case 13: 
return 7;
case 14: 
return 1;
case 15: 
return 3;
default: abort ();
}
}
}
}

void v3 (unsigned int v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = -4;
unsigned char v76 = 4;
signed short v75 = -4;
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
unsigned int v80;
signed int v81;
signed short v82;
unsigned char v83;
v80 = 1U + 6U;
v81 = v33 - -4;
v82 = -1 + -2;
v83 = 0 - 7;
v1 (v80, v81, v82, v83);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
