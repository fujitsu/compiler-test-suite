#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, signed short, signed char);
extern unsigned int (*v2) (signed char, signed int, signed short, signed char);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (signed char, signed short);
extern signed char (*v6) (signed char, signed short);
extern unsigned short v7 (signed int, signed int, signed char, unsigned short);
extern unsigned short (*v8) (signed int, signed int, signed char, unsigned short);
extern signed int v9 (unsigned int, unsigned char, unsigned char);
extern signed int (*v10) (unsigned int, unsigned char, unsigned char);
signed int v11 (unsigned int, unsigned char, unsigned short, unsigned int);
signed int (*v12) (unsigned int, unsigned char, unsigned short, unsigned int) = v11;
extern unsigned int v13 (signed char, unsigned int, unsigned int);
extern unsigned int (*v14) (signed char, unsigned int, unsigned int);
extern signed char v15 (signed int, unsigned char, signed char);
extern signed char (*v16) (signed int, unsigned char, signed char);
extern unsigned int v17 (signed int, unsigned char);
extern unsigned int (*v18) (signed int, unsigned char);
extern unsigned short v19 (signed char, unsigned char);
extern unsigned short (*v20) (signed char, unsigned char);
signed short v21 (unsigned char);
signed short (*v22) (unsigned char) = v21;
extern signed short v23 (signed char, unsigned char, signed char);
extern signed short (*v24) (signed char, unsigned char, signed char);
extern unsigned int v25 (unsigned char, unsigned int, unsigned short);
extern unsigned int (*v26) (unsigned char, unsigned int, unsigned short);
extern unsigned short v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned short (*v28) (signed short, unsigned short, signed char, unsigned short);
extern signed char v29 (unsigned int, signed char, unsigned short, signed int);
extern signed char (*v30) (unsigned int, signed char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
unsigned int v32 = 4U;
signed char v31 = 2;

signed short v21 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 3;
unsigned int v36 = 5U;
unsigned char v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v38, unsigned char v39, unsigned short v40, unsigned int v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 6;
unsigned short v43 = 1;
signed char v42 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed char v45;
unsigned int v46;
unsigned int v47;
unsigned int v48;
v45 = -4 + v42;
v46 = v38 - v41;
v47 = v41 - v41;
v48 = v13 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 4: 
{
signed char v49;
unsigned int v50;
unsigned int v51;
unsigned int v52;
v49 = v42 + v42;
v50 = v38 + v41;
v51 = v38 + v41;
v52 = v13 (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 6: 
{
signed char v53;
unsigned int v54;
unsigned int v55;
unsigned int v56;
v53 = v42 + v42;
v54 = 7U - v38;
v55 = v41 + v41;
v56 = v13 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 8: 
{
signed char v57;
unsigned int v58;
unsigned int v59;
unsigned int v60;
v57 = v42 - v42;
v58 = v41 - v38;
v59 = v38 - v41;
v60 = v13 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 10: 
{
signed char v61;
unsigned int v62;
unsigned int v63;
unsigned int v64;
v61 = -3 - v42;
v62 = v41 - 3U;
v63 = 3U + v41;
v64 = v13 (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 12: 
return -2;
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
signed char v67;
signed int v68;
signed short v69;
signed char v70;
unsigned int v71;
v67 = -1 - -3;
v68 = -4 + -1;
v69 = -1 + -4;
v70 = v31 - -3;
v71 = v1 (v67, v68, v69, v70);
history[history_index++] = (int)v71;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
