#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, unsigned short);
extern signed short (*v2) (unsigned char, unsigned char, unsigned short);
unsigned int v3 (signed int, signed char);
unsigned int (*v4) (signed int, signed char) = v3;
extern signed short v5 (unsigned int, unsigned short, signed short, signed int);
extern signed short (*v6) (unsigned int, unsigned short, signed short, signed int);
extern signed char v9 (signed char, unsigned char, unsigned char);
extern signed char (*v10) (signed char, unsigned char, unsigned char);
extern signed int v11 (unsigned int, signed short);
extern signed int (*v12) (unsigned int, signed short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed char v19 (unsigned char, signed int, signed int);
extern signed char (*v20) (unsigned char, signed int, signed int);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern unsigned char v23 (signed int, unsigned short);
extern unsigned char (*v24) (signed int, unsigned short);
extern signed int v25 (unsigned short, unsigned short, unsigned char);
extern signed int (*v26) (unsigned short, unsigned short, unsigned char);
signed char v27 (signed short, signed char);
signed char (*v28) (signed short, signed char) = v27;
signed int v29 (signed short, signed char);
signed int (*v30) (signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed short v32 = -3;
signed short v31 = 3;

signed int v29 (signed short v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = -3;
signed int v37 = 3;
signed int v36 = -4;
trace++;
switch (trace)
{
case 6: 
{
signed short v39;
signed char v40;
signed char v41;
v39 = -2 - -3;
v40 = 1 - v35;
v41 = v27 (v39, v40);
history[history_index++] = (int)v41;
}
break;
case 12: 
return v38;
default: abort ();
}
}
}
}

signed char v27 (signed short v42, signed char v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = -4;
signed char v45 = 3;
unsigned char v44 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed char v47;
unsigned char v48;
unsigned char v49;
signed char v50;
v47 = -1 - v43;
v48 = 2 + 0;
v49 = v44 - v44;
v50 = v9 (v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 7: 
{
signed char v51;
unsigned char v52;
unsigned char v53;
signed char v54;
v51 = v45 - v45;
v52 = 0 - v44;
v53 = 3 - 2;
v54 = v9 (v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 11: 
return v43;
case 14: 
return v43;
default: abort ();
}
}
}
}

unsigned int v3 (signed int v55, signed char v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 2;
signed char v58 = -4;
unsigned short v57 = 1;
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
unsigned char v62;
unsigned char v63;
unsigned short v64;
signed short v65;
v62 = 6 + 2;
v63 = 4 + 3;
v64 = 3 - 1;
v65 = v1 (v62, v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
