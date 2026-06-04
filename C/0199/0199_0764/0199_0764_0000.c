#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, signed short);
signed short v3 (unsigned int, unsigned short, unsigned char);
signed short (*v4) (unsigned int, unsigned short, unsigned char) = v3;
extern unsigned char v5 (signed short, unsigned short, unsigned short);
extern unsigned char (*v6) (signed short, unsigned short, unsigned short);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
unsigned short v9 (signed int, unsigned int, unsigned char);
unsigned short (*v10) (signed int, unsigned int, unsigned char) = v9;
unsigned int v11 (unsigned short, signed int);
unsigned int (*v12) (unsigned short, signed int) = v11;
extern signed int v13 (signed short, signed short);
extern signed int (*v14) (signed short, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v17 (unsigned int, signed short, unsigned char, signed int);
extern signed short (*v18) (unsigned int, signed short, unsigned char, signed int);
extern unsigned int v19 (signed short, signed short, signed char, signed char);
extern unsigned int (*v20) (signed short, signed short, signed char, signed char);
unsigned char v23 (unsigned int, unsigned char, unsigned char);
unsigned char (*v24) (unsigned int, unsigned char, unsigned char) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (signed char);
extern unsigned int (*v28) (signed char);
extern unsigned char v29 (signed int, signed short, unsigned short);
extern unsigned char (*v30) (signed int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed short v32 = -3;
signed char v31 = 3;

unsigned char v23 (unsigned int v34, unsigned char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -3;
signed short v38 = 1;
unsigned short v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v40, signed int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 0;
signed char v43 = 0;
unsigned short v42 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v45, unsigned int v46, unsigned char v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 3;
signed int v49 = 1;
unsigned int v48 = 6U;
trace++;
switch (trace)
{
case 5: 
{
signed int v51;
unsigned int v52;
unsigned char v53;
unsigned short v54;
v51 = v49 - v49;
v52 = 7U - 6U;
v53 = v47 + 2;
v54 = v9 (v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 6: 
{
signed int v55;
unsigned int v56;
unsigned char v57;
unsigned short v58;
v55 = v45 - v45;
v56 = 1U + v46;
v57 = v47 + v47;
v58 = v9 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 7: 
{
signed short v59;
signed short v60;
signed int v61;
v59 = -3 - v50;
v60 = -2 + -2;
v61 = v13 (v59, v60);
history[history_index++] = (int)v61;
}
break;
case 9: 
return 4;
case 10: 
return 1;
case 11: 
return 7;
default: abort ();
}
}
}
}

signed short v3 (unsigned int v62, unsigned short v63, unsigned char v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 5;
unsigned int v66 = 4U;
signed short v65 = 0;
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
unsigned char v70;
signed short v71;
unsigned int v72;
v70 = 0 - 2;
v71 = v32 - -1;
v72 = v1 (v70, v71);
history[history_index++] = (int)v72;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
