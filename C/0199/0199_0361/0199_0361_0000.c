#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned char);
extern signed int (*v2) (unsigned char, unsigned char);
extern signed char v3 (signed short, signed char);
extern signed char (*v4) (signed short, signed char);
signed short v5 (signed int, unsigned short, unsigned int);
signed short (*v6) (signed int, unsigned short, unsigned int) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v9 (unsigned char, signed int);
extern signed char (*v10) (unsigned char, signed int);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern void v15 (signed int);
extern void (*v16) (signed int);
extern void v17 (unsigned char, signed char, unsigned short, signed int);
extern void (*v18) (unsigned char, signed char, unsigned short, signed int);
void v19 (unsigned int, signed int);
void (*v20) (unsigned int, signed int) = v19;
static signed int v21 (signed short, unsigned short);
static signed int (*v22) (signed short, unsigned short) = v21;
extern unsigned short v23 (unsigned int, signed char, signed short);
extern unsigned short (*v24) (unsigned int, signed char, signed short);
extern signed short v25 (unsigned int, unsigned int, signed char, unsigned short);
extern signed short (*v26) (unsigned int, unsigned int, signed char, unsigned short);
unsigned short v27 (unsigned char, signed int, unsigned int, signed int);
unsigned short (*v28) (unsigned char, signed int, unsigned int, signed int) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
unsigned int v32 = 0U;
unsigned short v31 = 7;

unsigned short v27 (unsigned char v34, signed int v35, unsigned int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -3;
signed int v39 = -3;
unsigned int v38 = 6U;
trace++;
switch (trace)
{
case 8: 
{
signed short v41;
unsigned short v42;
signed int v43;
v41 = -3 - -1;
v42 = 2 - 3;
v43 = v21 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 10: 
{
signed short v44;
unsigned short v45;
signed int v46;
v44 = -2 - -2;
v45 = 5 - 7;
v46 = v21 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

static signed int v21 (signed short v47, unsigned short v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = 0;
unsigned int v50 = 3U;
signed char v49 = -1;
trace++;
switch (trace)
{
case 9: 
return -4;
case 11: 
return 0;
default: abort ();
}
}
}
}

void v19 (unsigned int v52, signed int v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = 0;
signed int v55 = -1;
unsigned char v54 = 4;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v57;
signed char v58;
signed short v59;
unsigned short v60;
v57 = 6U + 3U;
v58 = -1 - 0;
v59 = v56 - v56;
v60 = v23 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 4: 
{
unsigned int v61;
signed char v62;
signed short v63;
unsigned short v64;
v61 = v52 - 6U;
v62 = -2 + -3;
v63 = v56 - v56;
v64 = v23 (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 6: 
{
unsigned int v65;
unsigned int v66;
signed char v67;
unsigned short v68;
signed short v69;
v65 = v52 + 6U;
v66 = 7U + 5U;
v67 = 0 - -1;
v68 = 5 + 2;
v69 = v25 (v65, v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
signed char v72 = 0;
signed int v71 = 3;
signed char v70 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v73, unsigned short v74, unsigned int v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 5U;
signed char v77 = -3;
unsigned short v76 = 5;
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
unsigned char v81;
unsigned char v82;
signed int v83;
v81 = 4 - 3;
v82 = v33 - 5;
v83 = v1 (v81, v82);
history[history_index++] = (int)v83;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
