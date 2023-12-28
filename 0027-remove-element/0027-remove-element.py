class Solution(object):
    def removeElement(self, nums, val):
        val_count=nums.count(val)
        for j in range(0,val_count):
            nums.remove(val)
        k=len(nums)
        return k
        
            
        