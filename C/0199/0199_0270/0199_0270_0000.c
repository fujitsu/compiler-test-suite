#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, signed char);
extern unsigned int (*v2) (signed char, signed int, signed char);
extern unsigned char v3 (signed short, signed char, signed int, signed short);
extern unsigned char (*v4) (signed short, signed char, signed int, signed short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
unsigned short v9 (unsigned short, unsigned short);
unsigned short (*v10) (unsigned short, unsigned short) = v9;
signed int v11 (unsigned int);
signed int (*v12) (unsigned int) = v11;
signed int v13 (signed int, signed char, signed short);
signed int (*v14) (signed int, signed char, signed short) = v13;
extern unsigned int v15 (signed int, unsigned short, unsigned int);
extern unsigned int (*v16) (signed int, unsigned short, unsigned int);
extern signed int v17 (void);
extern signed int (*v18) (void);
unsigned short v19 (signed short, unsigned int, signed int, unsigned char);
unsigned short (*v20) (signed short, unsigned int, signed int, unsigned char) = v19;
unsigned int v21 (signed short, unsigned short);
unsigned int (*v22) (signed short, unsigned short) = v21;
unsigned int v23 (signed int, signed char, unsigned int, unsigned short);
unsigned int (*v24) (signed int, signed char, unsigned int, unsigned short) = v23;
extern unsigned short v25 (unsigned char, unsigned char, signed char, unsigned char);
extern unsigned short (*v26) (unsigned char, unsigned char, signed char, unsigned char);
extern signed int v27 (unsigned short, signed short, unsigned int, unsigned char);
extern signed int (*v28) (unsigned short, signed short, unsigned int, unsigned char);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed short v32 = 3;
unsigned short v31 = 4;

unsigned int v23 (signed int v34, signed char v35, unsigned int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 3;
unsigned int v39 = 4U;
unsigned int v38 = 4U;
trace++;
switch (trace)
{
case 4: 
return v39;
case 6: 
{
unsigned char v41;
unsigned char v42;
signed char v43;
unsigned char v44;
unsigned short v45;
v41 = 6 + 4;
v42 = 2 - 4;
v43 = -2 - v35;
v44 = 4 + 3;
v45 = v25 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 8: 
return v39;
default: abort ();
}
}
}
}

unsigned int v21 (signed short v46, unsigned short v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = -1;
signed short v49 = 1;
signed char v48 = 0;
trace++;
switch (trace)
{
case 2: 
return 6U;
default: abort ();
}
}
}
}

unsigned short v19 (signed short v51, unsigned int v52, signed int v53, unsigned char v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = -3;
signed short v56 = -4;
signed int v55 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed int v58, signed char v59, signed short v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = -2;
signed int v62 = -2;
unsigned char v61 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 5U;
signed int v66 = -2;
unsigned char v65 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v68, unsigned short v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 0;
unsigned int v71 = 1U;
unsigned int v70 = 5U;
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
signed char v75;
signed int v76;
signed char v77;
unsigned int v78;
v75 = 1 + 0;
v76 = -1 - -2;
v77 = -1 + 3;
v78 = v1 (v75, v76, v77);
history[history_index++] = (int)v78;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
